require 'test_helper'

class VideobeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @videobeam = videobeams(:one)
  end

  test "should get index" do
    get videobeams_url, as: :json
    assert_response :success
  end

  test "should create videobeam" do
    assert_difference('Videobeam.count') do
      post videobeams_url, params: { videobeam: { code: @videobeam.code } }, as: :json
    end

    assert_response 201
  end

  test "should show videobeam" do
    get videobeam_url(@videobeam), as: :json
    assert_response :success
  end

  test "should update videobeam" do
    patch videobeam_url(@videobeam), params: { videobeam: { code: @videobeam.code } }, as: :json
    assert_response 200
  end

  test "should destroy videobeam" do
    assert_difference('Videobeam.count', -1) do
      delete videobeam_url(@videobeam), as: :json
    end

    assert_response 204
  end
end
