class TicketsController < ApplicationController
  before_action :authorize, only: [:create]
  def index
    @tickets = Ticket.all
    @ticket = Ticket.new
  end

  def create
    @tickets = Ticket.all
    @ticket = current_user.tickets.new(params.require(:ticket).permit(:title, :message))
    if @ticket.save
      SLACK_NOTIFIER.ping("You have a new ticket <a href='#{request.protocol}#{request.host_with_port}#{ticket_comments_path(@ticket)}'>Check it here</a>")
      redirect_to tickets_path
    else
      render 'index'
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end
end
