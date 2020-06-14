require "application_system_test_case"

class LinkCategoriesTest < ApplicationSystemTestCase
  setup do
    @link_category = link_categories(:one)
  end

  test "visiting the index" do
    visit link_categories_url
    assert_selector "h1", text: "Link Categories"
  end

  test "creating a Link category" do
    visit link_categories_url
    click_on "New Link Category"

    fill_in "Name", with: @link_category.name
    click_on "Create Link category"

    assert_text "Link category was successfully created"
    click_on "Back"
  end

  test "updating a Link category" do
    visit link_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @link_category.name
    click_on "Update Link category"

    assert_text "Link category was successfully updated"
    click_on "Back"
  end

  test "destroying a Link category" do
    visit link_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Link category was successfully destroyed"
  end
end
