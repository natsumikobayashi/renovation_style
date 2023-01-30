class Customer::HomesController < ApplicationController
  def top
    @rooms = Room.all.limit(3).order(updated_at: :desc)
  end
end
