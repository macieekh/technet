class AddModelIdToDevices < ActiveRecord::Migration
  def change
    add_column :devices, :model_id, :integer
    add_index :devices, :model_id
  end
end
