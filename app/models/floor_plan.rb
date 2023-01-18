class FloorPlan < ApplicationRecord
  has_many :rooms
  has_many_attached :images
end
