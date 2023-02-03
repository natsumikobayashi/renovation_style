class Customer::FavoritesController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_variables

  def create
    favorite = current_customer.favorites.new(room_id: @room.id)
    favorite.save
  end

  def destroy
    favorite = current_customer.favorites.new(room_id: @room.id)
    favorite.destoy
  end


  private

  def set_variables
    @room = Room.find(params[:room_id])
    @id_name = "#favorite-link-#{@room.id}"
  end


end

