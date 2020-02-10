require "application_system_test_case"

class LamairiesTest < ApplicationSystemTestCase
  setup do
    @lamairy = lamairies(:one)
  end

  test "visiting the index" do
    visit lamairies_url
    assert_selector "h1", text: "Lamairies"
  end

  test "creating a Lamairie" do
    visit lamairies_url
    click_on "New Lamairie"

    fill_in "Description", with: @lamairy.description
    fill_in "Nom", with: @lamairy.nom
    click_on "Create Lamairie"

    assert_text "Lamairie was successfully created"
    click_on "Back"
  end

  test "updating a Lamairie" do
    visit lamairies_url
    click_on "Edit", match: :first

    fill_in "Description", with: @lamairy.description
    fill_in "Nom", with: @lamairy.nom
    click_on "Update Lamairie"

    assert_text "Lamairie was successfully updated"
    click_on "Back"
  end

  test "destroying a Lamairie" do
    visit lamairies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lamairie was successfully destroyed"
  end
end
