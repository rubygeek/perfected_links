require 'test_helper'

class CuratedLinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @curated_link = curated_links(:one)
  end

  test "should get index" do
    get curated_links_url
    assert_response :success
  end

  test "should get new" do
    get new_curated_link_url
    assert_response :success
  end

  test "should create curated_link" do
    assert_difference('CuratedLink.count') do
      post curated_links_url, params: { curated_link: { approved: @curated_link.approved, cat_id: @curated_link.cat_id, importance: @curated_link.importance, last_verified: @curated_link.last_verified, metadata: @curated_link.metadata, relevance: @curated_link.relevance, url: @curated_link.url } }
    end

    assert_redirected_to curated_link_url(CuratedLink.last)
  end

  test "should show curated_link" do
    get curated_link_url(@curated_link)
    assert_response :success
  end

  test "should get edit" do
    get edit_curated_link_url(@curated_link)
    assert_response :success
  end

  test "should update curated_link" do
    patch curated_link_url(@curated_link), params: { curated_link: { approved: @curated_link.approved, cat_id: @curated_link.cat_id, importance: @curated_link.importance, last_verified: @curated_link.last_verified, metadata: @curated_link.metadata, relevance: @curated_link.relevance, url: @curated_link.url } }
    assert_redirected_to curated_link_url(@curated_link)
  end

  test "should destroy curated_link" do
    assert_difference('CuratedLink.count', -1) do
      delete curated_link_url(@curated_link)
    end

    assert_redirected_to curated_links_url
  end
end
