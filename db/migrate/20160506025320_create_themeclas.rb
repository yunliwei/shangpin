class CreateThemeclas < ActiveRecord::Migration
  def change
    create_table :themeclas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
