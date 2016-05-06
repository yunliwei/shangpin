class CreateCaipinclas < ActiveRecord::Migration
  def change
    create_table :caipinclas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
