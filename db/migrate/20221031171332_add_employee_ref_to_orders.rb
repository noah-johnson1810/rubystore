class AddEmployeeRefToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :employee, null: false, foreign_key: true
  end
end
