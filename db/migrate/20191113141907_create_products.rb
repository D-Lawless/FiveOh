class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :img_url
      t.string :brand
      t.string :category

      t.timestamps
    end
  end
end
