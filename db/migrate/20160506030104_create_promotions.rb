class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.text :content
      t.datetime :startdate
      t.datetime :enddate
      t.datetime :showdate

      t.timestamps null: false
    end
  end
end
