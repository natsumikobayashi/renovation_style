class Manager < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :area

  has_many :enquiries
  has_many :rooms
  has_many_attached :images

  validates :name, presence: true
  validates :company_id, presence: true
  validates :address, presence: true
  validates :telephone_number, presence: true
  validates :email, presence: true
  validates :home_page, presence: true
  validates :catchphrase, presence: true,
  length: { minimum: 5, maximum: 40 }
  validates :area_id, presence: true
  validates :reqular_holiday, presence: true
  validates :password, presence: true

  def get_manager_image(width,height)
    image.variant(resize_to_limit: [width, height]).processed
  end
end
