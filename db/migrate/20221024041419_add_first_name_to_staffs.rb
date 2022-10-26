class AddFirstNameToStaffs < ActiveRecord::Migration[7.0]
  def change
    add_column :staffs, :firstName, :string
  end
end
