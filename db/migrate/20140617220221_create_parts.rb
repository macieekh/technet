class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
