class Room < ApplicationRecord
  belongs_to :manager
  belongs_to :taste_tag
  belongs_to :floor_plan

  #バリデーション設定

  has_many :enquiries
  has_many :room_images, inverse_of: :room, dependent: :destroy
  has_many :floor_images, inverse_of: :room, dependent: :destroy

  accepts_nested_attributes_for :room_images, allow_destroy: true
  validates_associated :room_images
  #画像をまとめて登録してくれる
  accepts_nested_attributes_for :floor_images, allow_destroy: true
  validates_associated :floor_images

  def get_room_image(width,height)
    image.variant(resize_to_limit: [width, height]).processed
  end
end
