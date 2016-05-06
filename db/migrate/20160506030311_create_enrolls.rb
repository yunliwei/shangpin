class CreateEnrolls < ActiveRecord::Migration
  def change
    create_table :enrolls do |t|
      t.integer :promotion_id
      t.string :name
      t.string :tel
      t.string :content

      t.timestamps null: false
    end
  end
end
