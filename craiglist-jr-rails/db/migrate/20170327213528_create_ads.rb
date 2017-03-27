class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.string :price
      t.references :category, foreign_key:true
      t.references :locality, foreign_key:true

      t.timestamps
    end
  end
end
