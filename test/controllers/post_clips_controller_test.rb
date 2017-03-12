require 'test_helper'

class PostClipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_clip = post_clips(:one)
  end

  test "should get index" do
    get post_clips_url, as: :json
    assert_response :success
  end

  test "should create post_clip" do
    assert_difference('PostClip.count') do
      post post_clips_url, params: { post_clip: { content: @post_clip.content, description: @post_clip.description, name: @post_clip.name } }, as: :json
    end

    assert_response 201
  end

  test "should show post_clip" do
    get post_clip_url(@post_clip), as: :json
    assert_response :success
  end

  test "should update post_clip" do
    patch post_clip_url(@post_clip), params: { post_clip: { content: @post_clip.content, description: @post_clip.description, name: @post_clip.name } }, as: :json
    assert_response 200
  end

  test "should destroy post_clip" do
    assert_difference('PostClip.count', -1) do
      delete post_clip_url(@post_clip), as: :json
    end

    assert_response 204
  end
end
