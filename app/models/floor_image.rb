class FloorImage < ApplicationRecord
  belongs_to :room_params
  has_many_attached :images
end
