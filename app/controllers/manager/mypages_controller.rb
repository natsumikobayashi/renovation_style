class Manager::MypagesController < ApplicationController
 before_action :authenticate_manager!
  def show
    @manager = current_manager
  end

  def update
    @manager = current_manager
    if  @manager.update(mypage_params)
      redirect_to manager_mypage_path, notice: "保存しました"
    else
      flash.now[:alert] = "エラーがあります"
      render :show
    end
  end

  def confirm
    @manager = current_manager
  end

  def subscribe
    @manager = current_manager
    if @manager.update(is_deleted: true)
     reset_session
     redirect_to new_manager_registration_path, notice: "退会しました"
    else
      flash.now[:alert] = "エラーがあります"
      render :confirm
    end
  end

  private

  def mypage_params
    params.require(:manager).permit(:name, :company_id, :address,
    :telephone_number, :email, :home_page, :catchphrase, :area_id,
    :reqular_holiday, images: [])
  end

end
