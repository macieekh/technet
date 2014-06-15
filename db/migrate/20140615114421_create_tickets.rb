class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.integer :counter
      t.text :issue

      t.timestamps
    end
  end
end
