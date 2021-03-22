require "application_system_test_case"

class LogoutsTest < ApplicationSystemTestCase
  
  test "Logout user" do
    user = FactoryBot.create(:user)
    login_as(user)

    click_link "Sair"
    
    assert_equal new_session_path, current_path
    assert_text "Sessão finalizada!!!"
 
  end

end
