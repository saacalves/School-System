require "test_helper"

class ClassSchoolsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get class_schools_index_url
    assert_response :success
  end

  test "should get new" do
    get class_schools_new_url
    assert_response :success
  end

  test "should get edit" do
    get class_schools_edit_url
    assert_response :success
  end
end
