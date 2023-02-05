class Customer::FavoritesController < ApplicationController
  before_action :authenticate_customer!
  before_action :set_variables, only: [:create, :destroy]

  def index
    @favorites = current_customer.favorites
    @enquiry = Enquiry.new
  end

  def create
    favorite = current_customer.favorites.new(room_id: @room.id)
    favorite.save
  end

  def destroy
    favorite = current_customer.favorites.find_by(room_id: @room.id)
    favorite.destroy
  end


  private

  def set_variables
    @room = Room.find(params[:room_id])
  end


end

