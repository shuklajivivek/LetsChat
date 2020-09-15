class MessagesController < ApplicationController
    before_action :require_user
  
    def create
      message = current_user.messages.build(message_params)
      if message.save
        ActionCable.server.broadcast "chatroom_channel",
                                    mod_msg: message_render(message)
      end
    end
  
    private
  
    def message_params
      params.require(:message).permit(:body)
    end
    def message_render(message)
      #below line renders a partial
      render(partial: 'message', locals: {message: message})
      #locals: {message: message}) is passing message which we are getting at line 6 and passing that as a parameter to message partial
    end
  end