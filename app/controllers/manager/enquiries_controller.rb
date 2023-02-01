class  Manager::EnquiriesController < ApplicationController
  def index
    @enquiries = current_manager.enquiries
  end

  def show
    @enquiry = Enquiry.find(params[:id])
  end
end
