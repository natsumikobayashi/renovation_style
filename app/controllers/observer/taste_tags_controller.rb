class Observer::TasteTagsController < ApplicationController
    before_action :authenticate_observer!
  def index
    @taste_tag = TasteTag.new
    @taste_tags = TasteTag.all
  end

  def create
   @taste_tag = TasteTag.new(taste_tag_params)
   if @taste_tag.save
    redirect_to observer_taste_tags_path, notice: "保存しました"
   else
      flash.now[:alert] = "エラーがあります"
      @taste_tags = TasteTag.all
      render :index
   end
  end

  def edit
   @taste_tag = TasteTag.find(params[:id])
  end

  def update
   @taste_tag = TasteTag.find(params[:id])
   if @taste_tag.update(taste_tag_params)
    redirect_to observer_taste_tags_path, notice: "保存しました"
   else
     flash.now[:alert] = "エラーがあります"
     render :edit
   end
  end

  private
  def taste_tag_params
    params.require(:taste_tag).permit(:name)

  end
end
