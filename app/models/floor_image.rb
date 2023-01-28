class FloorImage < ApplicationRecord
  belongs_to :room
  has_one_attached :image_before
  has_one_attached :image_after
end
