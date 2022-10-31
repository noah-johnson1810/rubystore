class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products, id: false do |t|
      t.string :id, primary_key: true
      t.string :name
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
