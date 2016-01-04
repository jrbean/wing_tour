class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :restaurant
      t.string :title
      t.text :body
      t.text :specials

      t.timestamps null: false
    end
  end
end
