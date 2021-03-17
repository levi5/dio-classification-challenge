require "application_system_test_case"

class SignupsTest < ApplicationSystemTestCase
  test "User register with the correct values" do
    
    visit "/"
    
    click_on "Cadastre-se"
    
    fill_in "Nome",   with: "Anonimo"
    fill_in "E-mail",   with: "anonimo@mail.com"
    fill_in "Senha",  with: "123456"
    fill_in "Confirme sua senha",   with: "123456"

    click_on "Cadastrar"

    assert_text "Cadastro realizado com sucesso!!!"
  
  end
end
