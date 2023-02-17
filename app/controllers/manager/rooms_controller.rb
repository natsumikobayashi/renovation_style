class Manager::RoomsController < ApplicationController
 before_action :authenticate_manager!
  def index
    @rooms = current_manager.rooms.page(params[:page]).per(10)
  end

  def new
    @room = Room.new
    @room.room_images.build
    #@roomが保存されたときにroom_imageも保存をかけるためのbuild
  end

  def create
    @room = Room.new(room_params)
    @room.manager_id = current_manager.id
    if @room.save
      flash[:notice] = "保存しました"
      redirect_to  manager_room_path(@room.id)
    else
      flash.now[:alert] = "エラーがあります"
      render :new
      #nowはrenderのみにつける
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if  @room.update(room_params)
      redirect_to  manager_room_path(@room.id), notice: "保存しました"
    else
      flash.now[:alert] = "エラーがあります"
      render :edit
    end
  end

  private

  def room_params
    params.require(:room).permit(:catchphrase, :user_comment, :owner_comment, :taste_tag_id, :manager_id, :floor_plan_id, :main_image, :image_before, :image_after, room_images_attributes:[:id, :room_id, :name, :image, :_destroy])
  end
end
