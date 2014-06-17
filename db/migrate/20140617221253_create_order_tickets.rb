class CreateOrderTickets < ActiveRecord::Migration
  def change
    create_table :order_tickets do |t|
      t.text :description

      t.timestamps
    end
  end
end
