require 'test_helper'

class PilotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pilot = pilots(:one)
  end

  test "should get index" do
    get pilots_url
    assert_response :success
  end

  test "should get new" do
    get new_pilot_url
    assert_response :success
  end

  test "should create pilot" do
    assert_difference('Pilot.count') do
      post pilots_url, params: { pilot: { body: @pilot.body, name: @pilot.name } }
    end

    assert_redirected_to pilot_url(Pilot.last)
  end

  test "should show pilot" do
    get pilot_url(@pilot)
    assert_response :success
  end

  test "should get edit" do
    get edit_pilot_url(@pilot)
    assert_response :success
  end

  test "should update pilot" do
    patch pilot_url(@pilot), params: { pilot: { body: @pilot.body, name: @pilot.name } }
    assert_redirected_to pilot_url(@pilot)
  end

  test "should destroy pilot" do
    assert_difference('Pilot.count', -1) do
      delete pilot_url(@pilot)
    end

    assert_redirected_to pilots_url
  end
end
