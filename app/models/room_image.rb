class RoomImage < ApplicationRecord
  belongs_to :room
  has_many_attached :images
end
