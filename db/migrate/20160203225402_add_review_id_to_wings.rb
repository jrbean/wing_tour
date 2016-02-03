class AddReviewIdToWings < ActiveRecord::Migration
  def change
    add_column :wings, :review_id, :integer
  end
end
