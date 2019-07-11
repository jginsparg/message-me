class ChatroomController < ApplicationController

  before_action :require_user

  def index
    @message = Message.new
    @messages = Message.all


    #original strategy,
  #  @finalmessage = ""
  #  Message.find_each do |message|
  #    u = User.find(message[:user_id])
  #    @finalmessage.concat("<i> <strong> #{u[:username]}: </i> </strong>#{message[:body]} <br>")
  #    end

  #then add <%= @finalmessage.html_safe %> to view
  end
end
