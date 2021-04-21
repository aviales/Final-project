require "test_helper"

class CheckListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @check_list = check_lists(:one)
  end

  test "should get index" do
    get check_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_check_list_url
    assert_response :success
  end

  test "should create check_list" do
    assert_difference('CheckList.count') do
      post check_lists_url, params: { check_list: { date: @check_list.date, hazard_type: @check_list.hazard_type } }
    end

    assert_redirected_to check_list_url(CheckList.last)
  end

  test "should show check_list" do
    get check_list_url(@check_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_check_list_url(@check_list)
    assert_response :success
  end

  test "should update check_list" do
    patch check_list_url(@check_list), params: { check_list: { date: @check_list.date, hazard_type: @check_list.hazard_type } }
    assert_redirected_to check_list_url(@check_list)
  end

  test "should destroy check_list" do
    assert_difference('CheckList.count', -1) do
      delete check_list_url(@check_list)
    end

    assert_redirected_to check_lists_url
  end
end
