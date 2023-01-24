class Room < ApplicationRecord
  belongs_to :manager
  belongs_to :taste_tag
  belongs_to :floor_plan
  has_many :enquiries
  has_many_attached :images

  def get_room_image(width,height)
    image.variant(resize_to_limit: [width, height]).processed
  end
end
