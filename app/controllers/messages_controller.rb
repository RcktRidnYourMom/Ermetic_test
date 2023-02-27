class MessagesController < ApplicationController

  def show
  end
  
  def index
    @message = Message.all 
  end

  def new 
    @message = Message.new 
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      flash[:notice] = "Message was saved and sent successfully."
      redirect_to home_path
    else
      render 'new'
    end
  end

  private 
  
  def message_params
    params.require(:message).permit(:title, :email, :content)
  end


      
  
end
