class Enquiry < ApplicationRecord
  belongs_to :room
  belongs_to :customer
  belongs_to :manager

  enum status: { outstanding: 0, in_progress: 1, closed: 2 }

   validates :content,
    length: { minimum: 1, maximum: 100 }
end
