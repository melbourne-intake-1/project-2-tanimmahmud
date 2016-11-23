require 'test_helper'

class SocialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social = socials(:one)
  end

  test "should get index" do
    get socials_url
    assert_response :success
  end

  test "should get new" do
    get new_social_url
    assert_response :success
  end

  test "should create social" do
    assert_difference('Social.count') do
      post socials_url, params: { social: { network: @social.network, user_id: @social.user_id, username: @social.username } }
    end

    assert_redirected_to social_url(Social.last)
  end

  test "should show social" do
    get social_url(@social)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_url(@social)
    assert_response :success
  end

  test "should update social" do
    patch social_url(@social), params: { social: { network: @social.network, user_id: @social.user_id, username: @social.username } }
    assert_redirected_to social_url(@social)
  end

  test "should destroy social" do
    assert_difference('Social.count', -1) do
      delete social_url(@social)
    end

    assert_redirected_to socials_url
  end
end
