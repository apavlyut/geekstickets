class CommentsController < ApplicationController
 
  before_action :set_comment, only: [:show, :new, :edit, :update, :destroy]

  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:body, :user_id, :ticket_id)
  end
end
