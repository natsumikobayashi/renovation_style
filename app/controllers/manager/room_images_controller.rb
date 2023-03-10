class Manager::RoomImagesController < ApplicationController
  before_action :authenticate_manager!
  def destroy
    @room_image = RoomImage.find(params[:id])
    @room = @room_image.room
    @room_image.destroy
    redirect_to manager_room_path(@room)
  end
end
