class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :content
      t.integer :rating
      t.references :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
