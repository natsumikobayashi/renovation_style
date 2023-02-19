class TasteTag < ApplicationRecord
  has_many :rooms

   validates :name,
    length: { minimum: 1, maximum: 10 }
end
