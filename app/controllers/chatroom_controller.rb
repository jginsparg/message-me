class ChatroomController < ApplicationController
  def index
    u = User.find(1)
    #puts u.username

    @messages = Message.all
    @message1 = Message.first
    @user1 = User.find(@message1[:user_id])
    puts @message1[:body]
    puts @messages
  end

end
