class Enquiry < ApplicationRecord
  belongs_to :room_id
  belongs_to :customer_id
end
