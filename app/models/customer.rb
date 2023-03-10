class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :enquiries
  has_many :favorites, dependent: :destroy

  validates :name, presence: true
  validates :telephone_number, presence: true
end
