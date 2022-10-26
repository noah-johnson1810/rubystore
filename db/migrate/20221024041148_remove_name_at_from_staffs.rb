class RemoveNameAtFromStaffs < ActiveRecord::Migration[7.0]
  def change
    remove_column :staffs, :name, :datetime
  end
end
