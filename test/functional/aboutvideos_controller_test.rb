require 'test_helper'

class AboutvideosControllerTest < ActionController::TestCase
  setup do
    @aboutvideo = aboutvideos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:aboutvideos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create aboutvideo" do
    assert_difference('Aboutvideo.count') do
      post :create, aboutvideo: { date: @aboutvideo.date, desc: @aboutvideo.desc, url: @aboutvideo.url }
    end

    assert_redirected_to aboutvideo_path(assigns(:aboutvideo))
  end

  test "should show aboutvideo" do
    get :show, id: @aboutvideo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @aboutvideo
    assert_response :success
  end

  test "should update aboutvideo" do
    put :update, id: @aboutvideo, aboutvideo: { date: @aboutvideo.date, desc: @aboutvideo.desc, url: @aboutvideo.url }
    assert_redirected_to aboutvideo_path(assigns(:aboutvideo))
  end

  test "should destroy aboutvideo" do
    assert_difference('Aboutvideo.count', -1) do
      delete :destroy, id: @aboutvideo
    end

    assert_redirected_to aboutvideos_path
  end
end
