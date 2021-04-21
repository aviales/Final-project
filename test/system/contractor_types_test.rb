require "application_system_test_case"

class ContractorTypesTest < ApplicationSystemTestCase
  setup do
    @contractor_type = contractor_types(:one)
  end

  test "visiting the index" do
    visit contractor_types_url
    assert_selector "h1", text: "Contractor Types"
  end

  test "creating a Contractor type" do
    visit contractor_types_url
    click_on "New Contractor Type"

    fill_in "Name", with: @contractor_type.name
    click_on "Create Contractor type"

    assert_text "Contractor type was successfully created"
    click_on "Back"
  end

  test "updating a Contractor type" do
    visit contractor_types_url
    click_on "Edit", match: :first

    fill_in "Name", with: @contractor_type.name
    click_on "Update Contractor type"

    assert_text "Contractor type was successfully updated"
    click_on "Back"
  end

  test "destroying a Contractor type" do
    visit contractor_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contractor type was successfully destroyed"
  end
end
