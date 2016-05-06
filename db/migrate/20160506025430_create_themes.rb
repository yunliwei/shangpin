class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.integer :themecla_id
      t.string :title

      t.timestamps null: false
    end
  end
end
