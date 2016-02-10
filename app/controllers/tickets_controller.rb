class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
    @ticket = Ticket.new
  end

  def create
    @tickets = Ticket.all
    @ticket = Ticket.new(params.require(:ticket).permit(:title, :message))
    if @ticket.save
      redirect_to tickets_path
    else
      render 'index'
    end
  end

  def show
    @ticket = Ticket.find(params[:id])
  end
end
