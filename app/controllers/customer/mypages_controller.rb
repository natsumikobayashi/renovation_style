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
      @customer = current_customer
      render :edit
    end

  end

  def subscribe
    @customer = current_customer
    if @customer.update(is_deleted: true)
     reset_session
     redirect_to root_path, notice: "退会しました"
    else
     flash.now[:alert] = "エラーがあります"
     render :show
    end
  end

  private

  def mypage_params
    params.require(:customer).permit(:name, :email, :telephone_number)
  end
end
