class Customer::EnquiriesController < ApplicationController

  def index
     @enquiries = current_customer.enquiries
  end

  def show
    @enquiry = Enquiry.find(params[:id])
  end

  def new
    @enquiry = Enquiry.new

  end

  def confirm

  end

  private

  def enquiry_params
    params.require(:enquiry).permit(:content, :customer_id, :room_id)
  end

end
