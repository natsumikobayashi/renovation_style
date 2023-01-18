class Room < ApplicationRecord
  belongs_to :managers_id
  belongs_to :taste_tag_id
  belongs_to :floor_plan_id
  has_many :enquiries
end
