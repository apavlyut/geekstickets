module TicketsHelper
  def show_author_of(ticket)
    "&nbsp;| автор &mdash; #{ticket.user.name}".html_safe if ticket.user
  end
end
