class  Manager::EnquiriesController < ApplicationController
 before_action :authenticate_manager!
  def index
    @enquiries = current_manager.enquiries.page(params[:page]).per(10)
  end

  def show
    @enquiry = Enquiry.find(params[:id])
  end

  def update
    @enquiry = Enquiry.find(params[:id])
    if @enquiry.update(enquiry_params)
      flash[:notice] = "更新しました"
      redirect_to  manager_enquiry_path(@enquiry.id)
    else
      flash.now[:alert] = "更新に失敗しました"
      render :show
    end
  end

  private
  def enquiry_params
    params.require(:enquiry).permit(:status)
  end
end
