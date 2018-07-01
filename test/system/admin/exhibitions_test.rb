require "application_system_test_case"

class Admin::ExhibitionsTest < ApplicationSystemTestCase
  setup do
    @admin_exhibition = admin_exhibitions(:one)
  end

  test "visiting the index" do
    visit admin_exhibitions_url
    assert_selector "h1", text: "Admin/Exhibitions"
  end

  test "creating a Exhibition" do
    visit admin_exhibitions_url
    click_on "New Admin/Exhibition"

    click_on "Create Exhibition"

    assert_text "Exhibition was successfully created"
    click_on "Back"
  end

  test "updating a Exhibition" do
    visit admin_exhibitions_url
    click_on "Edit", match: :first

    click_on "Update Exhibition"

    assert_text "Exhibition was successfully updated"
    click_on "Back"
  end

  test "destroying a Exhibition" do
    visit admin_exhibitions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Exhibition was successfully destroyed"
  end
end
