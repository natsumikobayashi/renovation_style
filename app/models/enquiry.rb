class Enquiry < ApplicationRecord
  belongs_to :room_id
  belongs_to :customer_id
  belongs_to :manager_id
end
