class Customer::EnquiriesController < ApplicationController
before_action :authenticate_customer!
  def index
     @enquiries = current_customer.enquiries
  end

  def show
    @enquiry = Enquiry.find(params[:id])
  end

  def new
    @enquiry = Enquiry.new
    @customer = current_customer
    @manager = Manager.find(params[:enquiry][:manager_id])
    @room = Room.find(params[:enquiry][:room_id])
  end

  def create
    @enquiry = Enquiry.new(enquiry_params)
    if @enquiry.save
      flash[:notice] = "問い合わせ完了しました"
      redirect_to customer_enquiry_path(@enquiry.id)
    else
      flash.now[:alert] = "お問い合わせ内容をご入力ください"
      @customer = current_customer
      @manager = Manager.find(params[:enquiry][:manager_id])
      @room = Room.find(params[:enquiry][:room_id])
      render :new
    end
  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:content, :room_id, :manager_id, :customer_id, :status)
  end

end
