require "application_system_test_case"

class CheckListsTest < ApplicationSystemTestCase
  setup do
    @check_list = check_lists(:one)
  end

  test "visiting the index" do
    visit check_lists_url
    assert_selector "h1", text: "Check Lists"
  end

  test "creating a Check list" do
    visit check_lists_url
    click_on "New Check List"

    fill_in "Date", with: @check_list.date
    fill_in "Hazard type", with: @check_list.hazard_type
    click_on "Create Check list"

    assert_text "Check list was successfully created"
    click_on "Back"
  end

  test "updating a Check list" do
    visit check_lists_url
    click_on "Edit", match: :first

    fill_in "Date", with: @check_list.date
    fill_in "Hazard type", with: @check_list.hazard_type
    click_on "Update Check list"

    assert_text "Check list was successfully updated"
    click_on "Back"
  end

  test "destroying a Check list" do
    visit check_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Check list was successfully destroyed"
  end
end
