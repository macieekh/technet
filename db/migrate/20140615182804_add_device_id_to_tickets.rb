class AddDeviceIdToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :device_id, :integer
    add_index :tickets, :device_id
  end
end
