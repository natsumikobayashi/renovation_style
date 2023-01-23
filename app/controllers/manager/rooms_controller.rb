class Manager::RoomsController < ApplicationController
  def index
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    @room.manager_id = current_manager.id #
    @room.taste_tag_id = 1 #
    @room.fllor_plan_id = 1 #
    @room.save!
    redirect_to  manager_room_path[:id]
  end

  def show
  end

  private

  def room_params
    params.require(:room).permit(:catchphrase, :user_comment, :owner_comment, :taste_tag_id, :manager_id, :foor_plan_id, images: [])
  end
end
