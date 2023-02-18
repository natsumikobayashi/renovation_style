class RoomImage < ApplicationRecord
  belongs_to :room
  has_one_attached :image

  validates :image, presence: true

  validates :name,
    length: { minimum: 1, maximum: 20 }
end
