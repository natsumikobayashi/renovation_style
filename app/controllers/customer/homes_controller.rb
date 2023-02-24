class Customer::HomesController < ApplicationController
  def top
    @rooms = Room.where(is_deleted: 'false').limit(3).order(updated_at: :desc)
  end
end
