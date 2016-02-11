class CommentsController < ApplicationController
 
  before_action :get_ticket
#  before_action :get_user

#  def get_user
#    @user = User.find(params[:user_id])
#  end

  def get_ticket
    @ticket = Ticket.find(params[:ticket_id])
  end

  def index
    @comments = Comment.all
  end

  def show
    @comment = @ticket.comments.find(params[:id])
  end

  def new
  end

  def create
    @comment = @ticket.comments.create(comment_params)
    
    respond_to do |format|
      format.html { redirect_to ticket_path(@ticket) }
      format.js
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_comment
    @comment = Comment.find(params[:ticket_id])
  end

  def comment_params
    params.require(:comment).permit(:body, :user_id, :ticket_id)
  end
end
