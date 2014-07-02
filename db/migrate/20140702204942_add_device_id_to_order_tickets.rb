class AddDeviceIdToOrderTickets < ActiveRecord::Migration
  def change
    add_column :order_tickets, :device_id, :integer
    add_index :order_tickets, :device_id
  end
end
