class Manager < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :area
  has_many :rooms
  has_many_attached :images

  def get_manager_image(width,height)
    image.variant(resize_to_limit: [width, height]).processed
  end
end
