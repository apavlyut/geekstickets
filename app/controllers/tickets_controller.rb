class TicketsController < ApplicationController
  before_action :check_access, only: [:create]
  def index
    @tickets = policy_scope(Ticket.all.where(project_id: params[:project_id]))
  end

  def create
    @ticket = current_user.tickets.new(params.require(:ticket).permit(:title, :message, :project_id))
    authorize @ticket
    if @ticket.save

      href = "#{request.protocol}#{request.host_with_port}#{ticket_comments_path(@ticket)}"

      href = ticket_url(@ticket)

      SLACK_NOTIFIER.ping("You have a new ticket <a href='#{href}'>Check it here</a>")
    end
    redirect_to tickets_path
  end

  def show
    @ticket = Ticket.find(params[:id])
    authorize @ticket
  end
end
