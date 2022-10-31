class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :firstName
      t.string :lastName
      t.string :phoneNumber

      t.timestamps
    end
  end
end
