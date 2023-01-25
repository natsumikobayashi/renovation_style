class Customer::HomesController < ApplicationController
  def top
    @rooms = Room.all
  end
end
