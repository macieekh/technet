class AddTypeToModels < ActiveRecord::Migration
  def change
    add_column :models, :type, :string
  end
end
