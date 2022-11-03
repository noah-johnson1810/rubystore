class Staff::StaffsController < ApplicationController
  def view
    @staff = Staff.all
  end
end
