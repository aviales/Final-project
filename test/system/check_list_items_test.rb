require "application_system_test_case"

class CheckListItemsTest < ApplicationSystemTestCase
  setup do
    @check_list_item = check_list_items(:one)
  end

  test "visiting the index" do
    visit check_list_items_url
    assert_selector "h1", text: "Check List Items"
  end

  test "creating a Check list item" do
    visit check_list_items_url
    click_on "New Check List Item"

    fill_in "Text", with: @check_list_item.text
    fill_in "Value", with: @check_list_item.value
    click_on "Create Check list item"

    assert_text "Check list item was successfully created"
    click_on "Back"
  end

  test "updating a Check list item" do
    visit check_list_items_url
    click_on "Edit", match: :first

    fill_in "Text", with: @check_list_item.text
    fill_in "Value", with: @check_list_item.value
    click_on "Update Check list item"

    assert_text "Check list item was successfully updated"
    click_on "Back"
  end

  test "destroying a Check list item" do
    visit check_list_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Check list item was successfully destroyed"
  end
end
