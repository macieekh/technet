class CreateOrderTicketLines < ActiveRecord::Migration
  def change
    create_table :order_ticket_lines do |t|
      t.integer :order_ticket_id
      t.integer :part_id
    end
  end
end
