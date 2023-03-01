class Room < ApplicationRecord
  belongs_to :manager
  belongs_to :taste_tag
  belongs_to :floor_plan
  has_one_attached :main_image
  has_one_attached :image_before
  has_one_attached :image_after

  has_many :enquiries
  has_many :room_images, inverse_of: :room, dependent: :destroy
  has_many :floor_images, inverse_of: :room, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :manager_images, dependent: :destroy

  accepts_nested_attributes_for :room_images, allow_destroy: true
  validates_associated :room_images
  #画像をまとめて登録してくれる

  validates :main_image, presence: true
  validates :image_after, presence: true

  validates :catchphrase,
    length: { minimum: 10, maximum: 30 }

  validates :user_comment,
    length: { minimum: 10, maximum: 100 }

  validates :owner_comment,
    length: { minimum: 10, maximum: 100 }

  validates :taste_tag_id, presence: true

  validates :floor_plan_id, presence: true


  def get_room_image(width,height)
    image.variant(resize_to_limit: [width, height]).processed
  end
end
