class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.column :title, :string
      t.column :description, :string
      t.column :rating, :integer
      t.column :product_id, :integer
    end
  end
end
