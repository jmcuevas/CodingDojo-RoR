require 'test_helper'

class NumbersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get numbers_index_url
    assert_response :success
  end

  test "should get try" do
    get numbers_try_url
    assert_response :success
  end

  test "should get restart" do
    get numbers_restart_url
    assert_response :success
  end

end
