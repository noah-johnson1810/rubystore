class Staff::StaffsController < ApplicationController
  def view
    @staff = ::Staff.all
  end

  def new
    @staff = ::Staff.new
  end

  def create
    @staff = ::Staff.new(params[:staff])

    if @staff.save
      flash[:notice] = 'Staff was successfully created.'
      redirect_to staff_staffs_view_path
    else
      flash[:notice] = 'Staff was unsuccessfully created'
      redirect_to staff_staffs_view_path
    end
  end
end
