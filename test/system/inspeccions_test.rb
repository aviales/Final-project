require "application_system_test_case"

class InspeccionsTest < ApplicationSystemTestCase
  setup do
    @inspeccion = inspeccions(:one)
  end

  test "visiting the index" do
    visit inspeccions_url
    assert_selector "h1", text: "Inspeccions"
  end

  test "creating a Inspeccion" do
    visit inspeccions_url
    click_on "New Inspeccion"

    fill_in "Periodicity", with: @inspeccion.periodicity
    click_on "Create Inspeccion"

    assert_text "Inspeccion was successfully created"
    click_on "Back"
  end

  test "updating a Inspeccion" do
    visit inspeccions_url
    click_on "Edit", match: :first

    fill_in "Periodicity", with: @inspeccion.periodicity
    click_on "Update Inspeccion"

    assert_text "Inspeccion was successfully updated"
    click_on "Back"
  end

  test "destroying a Inspeccion" do
    visit inspeccions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inspeccion was successfully destroyed"
  end
end
