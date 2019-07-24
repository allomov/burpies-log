require 'test_helper'

class BurpiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @burpy = burpies(:one)
  end

  test "should get index" do
    get burpies_url
    assert_response :success
  end

  test "should get new" do
    get new_burpy_url
    assert_response :success
  end

  test "should create burpy" do
    assert_difference('Burpy.count') do
      post burpies_url, params: { burpy: { person: @burpy.person, reason: @burpy.reason } }
    end

    assert_redirected_to burpy_url(Burpy.last)
  end

  test "should show burpy" do
    get burpy_url(@burpy)
    assert_response :success
  end

  test "should get edit" do
    get edit_burpy_url(@burpy)
    assert_response :success
  end

  test "should update burpy" do
    patch burpy_url(@burpy), params: { burpy: { person: @burpy.person, reason: @burpy.reason } }
    assert_redirected_to burpy_url(@burpy)
  end

  test "should destroy burpy" do
    assert_difference('Burpy.count', -1) do
      delete burpy_url(@burpy)
    end

    assert_redirected_to burpies_url
  end
end
