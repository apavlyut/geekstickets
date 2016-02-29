class AddStateToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :state, :string
    add_column :tickets, :release_date, :date
    add_column :tickets, :cancel_reason, :string
  end
end
