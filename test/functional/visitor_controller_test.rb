require 'test_helper'

class VisitorControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get shops" do
    get :shops
    assert_response :success
  end

  test "should get shop" do
    get :shop
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get what" do
    get :what
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

end
