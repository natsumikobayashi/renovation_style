class Customer::HomesController < ApplicationController
  def top
    @rooms = Room.all.order(created_at: :desc).limit(3)
    @room_image = @rooms.room_image_id.order(created_at: :desc).limit(1)
  end
end
