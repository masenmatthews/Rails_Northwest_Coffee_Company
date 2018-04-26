class CreateReviewsNew < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :review_title, :string
      t.column :review_description, :string
      t.column :rating, :integer
      t.column :product_id, :integer

      t.timestamp
    end
  end
end
