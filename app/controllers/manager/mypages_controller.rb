class Manager::MypagesController < ApplicationController
  def show
    @manager = current_customer
  end

  def confirm
    @manager = current_customer
  end
  
  def subscribe
    @manager = current_customer
    @manager.update!(is_deleted: true)
    reset_session
    redirect_to manager_top_path
  end
end
