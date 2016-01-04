class CreateWings < ActiveRecord::Migration
  def change
    create_table :wings do |t|
      t.boolean :type
      t.string :sauce
      t.integer :sauce_heat
      t.integer :sauce_flavor
      t.integer :texture
      t.string :served_with

      t.timestamps null: false
    end
  end
end
