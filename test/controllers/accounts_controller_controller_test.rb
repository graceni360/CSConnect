require 'test_helper'

class AccountsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get accounts_controller_new_url
    assert_response :success
  end

end
