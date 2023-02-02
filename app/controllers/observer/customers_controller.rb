class Observer::CustomersController < ApplicationController
  before_action :authenticate_observer!
  def index
    @customers= Customer.all
  end
end
