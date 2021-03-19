require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
  test "User login with the correct values" do
    user = FactoryBot.create(:user, password: "password", password_confirmation: "password")

    visit root_path
    
    click_link "Entrar"
    
    
    fill_in "E-mail",   with: user.email
    fill_in "Senha",  with: "password"
    
    click_button "Entrar"
    
    assert_text "Bem vindo Anonimo!!!"
  end
end
