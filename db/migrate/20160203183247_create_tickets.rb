class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :message
      t.boolean :resolved, default: false

      t.timestamps null: false
    end
  end
end
