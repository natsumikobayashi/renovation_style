class Customer::FavoritesController < ApplicationController
  before_action :authenticate_customer!

  def create
    @room = Room.find(params[:room_id])
    @favorite - Favorite.create(customer_id: current_customer.id, room_id: @room.id)
  end
  
  def destroy
    @room = Room.find(params[:room_id])
    @favorite = Favorite.find_by(customer_id: current_customer.id, room_id: @room.id)
    @favorite.destoy
  end



end

