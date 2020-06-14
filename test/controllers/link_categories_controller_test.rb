require 'test_helper'

class LinkCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @link_category = link_categories(:one)
  end

  test "should get index" do
    get link_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_link_category_url
    assert_response :success
  end

  test "should create link_category" do
    assert_difference('LinkCategory.count') do
      post link_categories_url, params: { link_category: { name: @link_category.name } }
    end

    assert_redirected_to link_category_url(LinkCategory.last)
  end

  test "should show link_category" do
    get link_category_url(@link_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_link_category_url(@link_category)
    assert_response :success
  end

  test "should update link_category" do
    patch link_category_url(@link_category), params: { link_category: { name: @link_category.name } }
    assert_redirected_to link_category_url(@link_category)
  end

  test "should destroy link_category" do
    assert_difference('LinkCategory.count', -1) do
      delete link_category_url(@link_category)
    end

    assert_redirected_to link_categories_url
  end
end
