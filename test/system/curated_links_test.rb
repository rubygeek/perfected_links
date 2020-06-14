require "application_system_test_case"

class CuratedLinksTest < ApplicationSystemTestCase
  setup do
    @curated_link = curated_links(:one)
  end

  test "visiting the index" do
    visit curated_links_url
    assert_selector "h1", text: "Curated Links"
  end

  test "creating a Curated link" do
    visit curated_links_url
    click_on "New Curated Link"

    check "Approved" if @curated_link.approved
    fill_in "Cat", with: @curated_link.cat_id
    fill_in "Importance", with: @curated_link.importance
    fill_in "Last verified", with: @curated_link.last_verified
    fill_in "Metadata", with: @curated_link.metadata
    fill_in "Relevance", with: @curated_link.relevance
    fill_in "Url", with: @curated_link.url
    click_on "Create Curated link"

    assert_text "Curated link was successfully created"
    click_on "Back"
  end

  test "updating a Curated link" do
    visit curated_links_url
    click_on "Edit", match: :first

    check "Approved" if @curated_link.approved
    fill_in "Cat", with: @curated_link.cat_id
    fill_in "Importance", with: @curated_link.importance
    fill_in "Last verified", with: @curated_link.last_verified
    fill_in "Metadata", with: @curated_link.metadata
    fill_in "Relevance", with: @curated_link.relevance
    fill_in "Url", with: @curated_link.url
    click_on "Update Curated link"

    assert_text "Curated link was successfully updated"
    click_on "Back"
  end

  test "destroying a Curated link" do
    visit curated_links_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curated link was successfully destroyed"
  end
end
