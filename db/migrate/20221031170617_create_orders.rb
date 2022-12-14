class CreateOrders < ActiveRecord::Migration[7.0]
  def up
    change_column :orders, :order_id, auto_increment: true
  end

  def change
    create_table :orders, id: false do |t|
      t.string :id, primary_key: true

      t.timestamps
    end
  end
end
