class Observer::TasteTagsController < ApplicationController
  def index
    @taste_tag = TasteTag.new
    @taste_tags = TasteTag.all
  end

  def create
   @taste_tag = TasteTag.new(taste_tag_params)
   @taste_tag.save!
   redirect_to observer_taste_tags_path
  end

  def edit
   @taste_tag = TasteTag.find(params[:id])
  end

  def update
   @taste_tag = TasteTag.find(params[:id])
   @taste_tag.update(taste_tag_params)
   redirect_to observer_taste_tags_path
  end

  private
  def taste_tag_params
    params.require(:taste_tag).permit(:name)

  end
end
