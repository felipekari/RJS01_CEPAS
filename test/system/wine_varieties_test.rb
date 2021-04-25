require "application_system_test_case"

class WineVarietiesTest < ApplicationSystemTestCase
  setup do
    @wine_variety = wine_varieties(:one)
  end

  test "visiting the index" do
    visit wine_varieties_url
    assert_selector "h1", text: "Wine Varieties"
  end

  test "creating a Wine variety" do
    visit wine_varieties_url
    click_on "New Wine Variety"

    click_on "Create Wine variety"

    assert_text "Wine variety was successfully created"
    click_on "Back"
  end

  test "updating a Wine variety" do
    visit wine_varieties_url
    click_on "Edit", match: :first

    click_on "Update Wine variety"

    assert_text "Wine variety was successfully updated"
    click_on "Back"
  end

  test "destroying a Wine variety" do
    visit wine_varieties_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wine variety was successfully destroyed"
  end
end
