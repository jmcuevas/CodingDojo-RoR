require 'test_helper'

class SayControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get say_hello" do
    get :say_hello
    assert_response :success
  end

  test "should get say_hello_joe" do
    get :say_hello_joe
    assert_response :success
  end

  test "should get say_hello_michael" do
    get :say_hello_michael
    assert_response :success
  end

  test "should get what" do
    get :what
    assert_response :success
  end

  test "should get how_many_visits" do
    get :how_many_visits
    assert_response :success
  end

  test "should get reset_visits" do
    get :reset_visits
    assert_response :success
  end

end
