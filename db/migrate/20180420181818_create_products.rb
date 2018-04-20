class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.column :title, :string
      t.column :description, :string

      t.timestamp
    end
  end
end
