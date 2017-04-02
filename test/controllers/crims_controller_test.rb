require 'test_helper'

class CrimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @crim = crims(:one)
  end

  test "should get index" do
    get crims_url
    assert_response :success
  end

  test "should get new" do
    get new_crim_url
    assert_response :success
  end

  test "should create crim" do
    assert_difference('Crim.count') do
      post crims_url, params: { crim: { date: @crim.date, name: @crim.name, plate: @crim.plate, zip: @crim.zip } }
    end

    assert_redirected_to crim_url(Crim.last)
  end

  test "should show crim" do
    get crim_url(@crim)
    assert_response :success
  end

  test "should get edit" do
    get edit_crim_url(@crim)
    assert_response :success
  end

  test "should update crim" do
    patch crim_url(@crim), params: { crim: { date: @crim.date, name: @crim.name, plate: @crim.plate, zip: @crim.zip } }
    assert_redirected_to crim_url(@crim)
  end

  test "should destroy crim" do
    assert_difference('Crim.count', -1) do
      delete crim_url(@crim)
    end

    assert_redirected_to crims_url
  end
end
