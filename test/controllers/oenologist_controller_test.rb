require 'test_helper'

class OenologistControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get oenologist_name_url
    assert_response :success
  end

  test "should get age:integer" do
    get oenologist_age:integer_url
    assert_response :success
  end

  test "should get nationality" do
    get oenologist_nationality_url
    assert_response :success
  end

  test "should get company" do
    get oenologist_company_url
    assert_response :success
  end

  test "should get role" do
    get oenologist_role_url
    assert_response :success
  end

end
