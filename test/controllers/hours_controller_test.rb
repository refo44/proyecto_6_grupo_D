require 'test_helper'

class HoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hour = hours(:one)
  end

  test "should get index" do
    get hours_url, as: :json
    assert_response :success
  end

  test "should create hour" do
    assert_difference('Hour.count') do
      post hours_url, params: { hour: { hour: @hour.hour } }, as: :json
    end

    assert_response 201
  end

  test "should show hour" do
    get hour_url(@hour), as: :json
    assert_response :success
  end

  test "should update hour" do
    patch hour_url(@hour), params: { hour: { hour: @hour.hour } }, as: :json
    assert_response 200
  end

  test "should destroy hour" do
    assert_difference('Hour.count', -1) do
      delete hour_url(@hour), as: :json
    end

    assert_response 204
  end
end
