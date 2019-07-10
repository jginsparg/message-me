require 'test_helper'

class ChatroomControllerTest < ActionDispatch::IntegrationTest
  test "should get chatroom" do
    get chatroom_chatroom_url
    assert_response :success
  end

end
