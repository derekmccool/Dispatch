class CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.create(customer_params)
    if @customer.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end

  end

  private

  def customer_params
    params.require(:customer).permit(:name, :address_1, :adress_2, :state, :postal, :phone_1, :phone_2, :xcord, :ycord, :notes)
  end
end
