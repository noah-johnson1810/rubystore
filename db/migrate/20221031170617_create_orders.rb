class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders, id: false do |t|
      t.string :id, primary_key: true

      t.timestamps
    end
  end
end
