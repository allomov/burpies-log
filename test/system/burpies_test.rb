require "application_system_test_case"

class BurpiesTest < ApplicationSystemTestCase
  setup do
    @burpy = burpies(:one)
  end

  test "visiting the index" do
    visit burpies_url
    assert_selector "h1", text: "Burpies"
  end

  test "creating a Burpy" do
    visit burpies_url
    click_on "New Burpy"

    fill_in "Person", with: @burpy.person
    fill_in "Reason", with: @burpy.reason
    click_on "Create Burpy"

    assert_text "Burpy was successfully created"
    click_on "Back"
  end

  test "updating a Burpy" do
    visit burpies_url
    click_on "Edit", match: :first

    fill_in "Person", with: @burpy.person
    fill_in "Reason", with: @burpy.reason
    click_on "Update Burpy"

    assert_text "Burpy was successfully updated"
    click_on "Back"
  end

  test "destroying a Burpy" do
    visit burpies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Burpy was successfully destroyed"
  end
end
