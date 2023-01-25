class Room < ApplicationRecord
  belongs_to :manager
  belongs_to :taste_tag
  belongs_to :floor_plan
  has_many :enquiries
  has_many :room_images
  has_many :floor_images

  accepts_nested_attributes_for :room_images, allow_destroy: true
  #画像をまとめて登録してくれる
  accepts_nested_attributes_for :floor_images, allow_destroy: true

  def get_room_image(width,height)
    image.variant(resize_to_limit: [width, height]).processed
  end
end
