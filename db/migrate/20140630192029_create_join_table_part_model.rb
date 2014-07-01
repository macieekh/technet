class CreateJoinTablePartModel < ActiveRecord::Migration
  def change
    create_join_table :parts, :models do |t|
      # t.index [:part_id, :model_id]
      # t.index [:model_id, :part_id]
    end
  end
end
