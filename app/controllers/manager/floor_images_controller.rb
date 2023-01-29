class Manager::FloorImagesController < ApplicationController
  def destroy
    @floor_image = FloorImage.find(params[:id])
    @room = @floor_image.room
    @floor_image.destroy
    redirect_to manager_room_path(@room)
  end
end
