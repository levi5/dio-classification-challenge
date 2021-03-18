require "test_helper"

class UserTest < ActiveSupport::TestCase
  
  test "name required" do
    user  = User.new(name: nil)
    user.save
    assert user.errors[:name].any?
  end

  test "email required" do
    user  = User.new(email: nil)
    user.save
    assert user.errors[:email].any?
    
    user  = User.new(email: 'invalide')
    user.save
    assert user.errors[:email].any?

    user  = User.new(email: 'valid@mail.com')
    user.save
    refute assert user.errors[:email].any?

  end

  test "single email" do
    user = User.create!(name: "anonimo", email: "anonimo@mail.com", password: "123456", password_confirmation: "123456")
    other_user = User.create(email: "anonimo@mail.com")

    assert other_user.errors[:email].any? 

  end

end
