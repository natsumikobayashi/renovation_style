class Manager::RoomsController < ApplicationController
  def index
    @rooms = Room.page(params[:page])
  end

  def new
    @room = Room.new
    @room.room_images.build
    @room.floor_images.build
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

  def delete_room_image #room_image削除
    @room_image = RoomImage.find(params[:room_image_id])
    @room_image.destroy
    @room = @room_image.room
    redirect_to manager_room_path(@room.id)
  end

  def delete_floor_image #floor_image削除したい！！
    @floor_image = FloorImage.find(params[:floor_image_id])
    @floor_image.destroy
    @room = @floor_image.room
    redirect_to manager_room_path(@room.id)
  end

  private

  def room_params
    params.require(:room).permit(:catchphrase, :user_comment, :owner_comment, :taste_tag_id, :manager_id, :floor_plan_id, room_images_attributes:[:id, :room_id, :name, :image, :_destroy], floor_images_attributes:[:id, :room_id, :image_before, :image_after, :_destroy])
  end
end
