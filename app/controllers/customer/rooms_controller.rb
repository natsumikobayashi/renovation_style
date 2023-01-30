class Customer::RoomsController < ApplicationController
  def index
    @rooms = Room.all.page(params[:page]).per(10)
     if params[:search]
       @rooms = @rooms.where(taste_tag_id: params.dig(:search, :taste_tag_ids)) if params.dig(:search, taste_tag_ids)
       @rooms = @rooms.where(floor_plan_id: params.dig(:search, :floor_plan_ids)) if params.dig(:search, floor_plan_ids)
     end
  end

  def show
    @room = Room.find(params[:id])
  end
end
