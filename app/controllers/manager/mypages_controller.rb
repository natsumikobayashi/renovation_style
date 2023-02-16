class Manager::MypagesController < ApplicationController
 before_action :authenticate_manager!
  def show
    @manager = current_manager
  end

  def update
    @manager = current_manager
    @manager.update(mypage_params)
    redirect_to manager_mypage_path
  end

  def confirm
    @manager = current_manager
  end

  def subscribe
    @manager = current_manager
    @manager.update!(is_deleted: true)
    reset_session
    redirect_to manager_top_path
  end

  private

  def mypage_params
    params.require(:manager).permit(:name, :company_id, :address,
    :telephone_number, :email, :home_page, :catchphrase, :area_id,
    :reqular_holiday, :password, :encrypted_password, images: [])
  end

end
