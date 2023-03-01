class Manager < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, authentication_keys: [:company_id, :email]
  belongs_to :area

  has_many :enquiries
  has_many :rooms
  has_many_attached :manager_images

  #accepts_nested_attributes_for :manager_images, allow_destroy: true

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
 # validates :manager_images, attached_file_presence: true
  #validate :manager_images_presence
   validates :manager_images, attached: true


 # def manager_images_presence

   # if manager_images.count == 0
     # errors.add(:, "ddddd")
   # end
 # end

  #validates :password, presence: true

  # def get_manager_image(width,height)
  #   image.variant(resize_to_limit: [width, height]).processed
  # end

  # 企業IDとメールアドレスでログインをする
  def self.find_for_database_authentication(warden_conditions)
    email = warden_conditions[:email].to_s.downcase.strip
    find_by(email: email, company_id: warden_conditions[:company_id])
  end
end
