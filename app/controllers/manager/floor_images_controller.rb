class Manager::FloorImagesController < ApplicationController
  before_action :authenticate_manager!
  def destroy
    @floor_image = FloorImage.find(params[:id])
    @room = @floor_image.room
    @floor_image.destroy
    redirect_to manager_room_path(@room)
  end
end
