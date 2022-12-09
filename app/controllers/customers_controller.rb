class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(employee_params)
    if @customer.save
      redirect_to @customers
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])

    if @customer.update(employee_params)
      redirect_to @customers
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy

    redirect_to "/customers/index"
  end

  private
  def customer_params
    params.require(:customer).permit(:firstName, :lastName)
  end

end

