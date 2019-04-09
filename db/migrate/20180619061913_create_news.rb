class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.text :title
      t.string :url
      t.integer :cate_no
      t.string :category
      t.date :info_date
      t.timestamps null: false
    end
  end
end
