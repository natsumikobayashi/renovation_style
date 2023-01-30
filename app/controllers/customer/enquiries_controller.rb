class Customer::EnquiriesController < ApplicationController

  def index
  end

  def show
  end

  def new
    @customer = current_customer
    @manager = 
    @enquiry = Enquiry.new
  end

  def confirm
  end
end
