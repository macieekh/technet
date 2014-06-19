class CreateJoinTableModelPart < ActiveRecord::Migration
  def change
    create_join_table :models, :parts do |t|
      # t.index [:model_id, :part_id]
      # t.index [:part_id, :model_id]
    end
  end
end
