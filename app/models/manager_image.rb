class ManagerImage < ApplicationRecord
  belongs_to :manager
  has_one_attached :image

  validates :image, presence: true
end
