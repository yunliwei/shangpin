class CreateCaipins < ActiveRecord::Migration
  def change
    create_table :caipins do |t|
      t.integer :caipincla_id
      t.string :name
      t.string :summary
      t.float :price

      t.timestamps null: false
    end
  end
end
