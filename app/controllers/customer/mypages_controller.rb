class Customer::MypagesController < ApplicationController
  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    @customer.update(mypage_params)
    redirect_to customer_mypage_path
  end

  def index
  end

  def subscribe
    @customer = current_customer
    @customer.update!(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private

  def mypage_params
    params.require(:customer).permit(:name, :email, :telephone_number)
  end
end
