class Manager::MypagesController < ApplicationController
  def show
    @manager = current_manager
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

end
