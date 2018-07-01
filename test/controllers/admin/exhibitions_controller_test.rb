require 'test_helper'

class Admin::ExhibitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_exhibition = admin_exhibitions(:one)
  end

  test "should get index" do
    get admin_exhibitions_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_exhibition_url
    assert_response :success
  end

  test "should create admin_exhibition" do
    assert_difference('Admin::Exhibition.count') do
      post admin_exhibitions_url, params: { admin_exhibition: {  } }
    end

    assert_redirected_to admin_exhibition_url(Admin::Exhibition.last)
  end

  test "should show admin_exhibition" do
    get admin_exhibition_url(@admin_exhibition)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_exhibition_url(@admin_exhibition)
    assert_response :success
  end

  test "should update admin_exhibition" do
    patch admin_exhibition_url(@admin_exhibition), params: { admin_exhibition: {  } }
    assert_redirected_to admin_exhibition_url(@admin_exhibition)
  end

  test "should destroy admin_exhibition" do
    assert_difference('Admin::Exhibition.count', -1) do
      delete admin_exhibition_url(@admin_exhibition)
    end

    assert_redirected_to admin_exhibitions_url
  end
end
