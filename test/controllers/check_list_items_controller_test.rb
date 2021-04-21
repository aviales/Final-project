require "test_helper"

class CheckListItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @check_list_item = check_list_items(:one)
  end

  test "should get index" do
    get check_list_items_url
    assert_response :success
  end

  test "should get new" do
    get new_check_list_item_url
    assert_response :success
  end

  test "should create check_list_item" do
    assert_difference('CheckListItem.count') do
      post check_list_items_url, params: { check_list_item: { text: @check_list_item.text, value: @check_list_item.value } }
    end

    assert_redirected_to check_list_item_url(CheckListItem.last)
  end

  test "should show check_list_item" do
    get check_list_item_url(@check_list_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_check_list_item_url(@check_list_item)
    assert_response :success
  end

  test "should update check_list_item" do
    patch check_list_item_url(@check_list_item), params: { check_list_item: { text: @check_list_item.text, value: @check_list_item.value } }
    assert_redirected_to check_list_item_url(@check_list_item)
  end

  test "should destroy check_list_item" do
    assert_difference('CheckListItem.count', -1) do
      delete check_list_item_url(@check_list_item)
    end

    assert_redirected_to check_list_items_url
  end
end
