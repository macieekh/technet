class AddColorToModels < ActiveRecord::Migration
  def change
    add_column :models, :color, :string
  end
end
