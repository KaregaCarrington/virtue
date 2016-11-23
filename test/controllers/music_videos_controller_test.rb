require 'test_helper'

class MusicVideosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get music_videos_index_url
    assert_response :success
  end

end
