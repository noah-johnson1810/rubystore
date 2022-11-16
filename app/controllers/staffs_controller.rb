class StaffsController < ApplicationController
  def index
    @staffs = Staff.all
  end

  def new
    @staff = Staff.new
  end

  def show
    @staff = Staff.find(params[:id])
  end

  def create
    @staff = Staff.new(staff_params)
    if @staff.save
      redirect_to @staff
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @staff = Staff.find(params[:id])
  end

  def update
    @staff = Staff.find(params[:id])

    if @staff.update(staff_params)
      redirect_to @staff
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @staff = Staff.find(params[:id])
    @staff.destroy

    redirect_to "/staffs/index"
  end

  private
  def staff_params
    params.require(:staff).permit(:firstName, :lastName, :phoneNumber)
  end

end
