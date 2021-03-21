require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
  def setup 
    @user = FactoryBot.create(:user, password: "password", password_confirmation: "password")
  end

  test "User login with the correct values" do
    login_as(@user)
    assert_text "Bem vindo Anonimo!!!"
  end
  
  test "User login with the invalid values" do
    
    login_as(@user, "123456")
    
    assert_equal new_session_path, current_path
    assert_text "E-mail ou Senha inválidos!!!"
    
  end
end
