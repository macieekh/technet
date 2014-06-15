class CreateDevices < ActiveRecord::Migration
  def change
    create_table :devices do |t|
      t.string :serial
      t.string :location

      t.timestamps
    end
  end
end
