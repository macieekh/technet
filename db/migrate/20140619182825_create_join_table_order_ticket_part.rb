class CreateJoinTableOrderTicketPart < ActiveRecord::Migration
  def change
    create_join_table :order_tickets, :parts do |t|
      # t.index [:order_ticket_id, :part_id]
      # t.index [:part_id, :order_ticket_id]
    end
  end
end
