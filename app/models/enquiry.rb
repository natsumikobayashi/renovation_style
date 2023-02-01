class Enquiry < ApplicationRecord
  belongs_to :room
  belongs_to :customer
  belongs_to :manager

   validates :content,
    length: { minimum: 1, maximum: 100 }
end
