class Customer::RoomsController < ApplicationController
  def index
    @rooms = Room.all.page(params[:page]).per(10)

     if params[:search]
       @taste_tag_ids = params[:search][:taste_tag_ids]
       @area_ids =  params[:search][:area_ids]
       @floor_plan_ids = params[:search][:floor_plan_ids]
       @rooms = Room.includes(:manager).where(managers: {area_id: @area_ids == [""] ? Area.pluck(:id) : @area_ids  })
       .where(taste_tag_id: @taste_tag_ids == [""] ? TasteTag.pluck(:id) : @taste_tag_ids )
       .where(floor_plan_id: @floor_plan_ids == [""] ? FloorPlan.pluck(:id) : @floor_plan_ids )
       .page(params[:page]).per(10)

       #@rooms = @rooms.where(taste_tag_id: params.dig(:search, :taste_tag_ids)) if params.dig(:search, taste_tag_ids)
       #@rooms = @rooms.where(floor_plan_id: params.dig(:search, :floor_plan_ids)) if params.dig(:search, floor_plan_ids)
       #@rooms = @rooms.where(area_id: params.dig(:search, :area_ids)) if params.dig(:search, area_ids)
     end
  end

  def show
    @room = Room.find(params[:id])
  end
end
