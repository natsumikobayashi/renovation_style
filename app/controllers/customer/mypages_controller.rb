class Customer::MypagesController < ApplicationController
 before_action :authenticate_customer!
  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    if @customer.update(mypage_params)
      redirect_to customer_mypage_path, notice: "保存しました"
    else
      flash.now[:alert] = "エラーがあります"
    end

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
