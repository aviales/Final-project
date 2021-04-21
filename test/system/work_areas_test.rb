require "application_system_test_case"

class WorkAreasTest < ApplicationSystemTestCase
  setup do
    @work_area = work_areas(:one)
  end

  test "visiting the index" do
    visit work_areas_url
    assert_selector "h1", text: "Work Areas"
  end

  test "creating a Work area" do
    visit work_areas_url
    click_on "New Work Area"

    fill_in "Name", with: @work_area.name
    click_on "Create Work area"

    assert_text "Work area was successfully created"
    click_on "Back"
  end

  test "updating a Work area" do
    visit work_areas_url
    click_on "Edit", match: :first

    fill_in "Name", with: @work_area.name
    click_on "Update Work area"

    assert_text "Work area was successfully updated"
    click_on "Back"
  end

  test "destroying a Work area" do
    visit work_areas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work area was successfully destroyed"
  end
end
