class DropModelsParts < ActiveRecord::Migration
  def up
    drop_table :models_parts
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
