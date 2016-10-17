require 'test_helper'

class PhonebooksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get phonebooks_show_url
    assert_response :success
  end

  test "should get index" do
    get phonebooks_index_url
    assert_response :success
  end

  test "should get new" do
    get phonebooks_new_url
    assert_response :success
  end

  test "should get update" do
    get phonebooks_update_url
    assert_response :success
  end

  test "should get delete" do
    get phonebooks_delete_url
    assert_response :success
  end

end
