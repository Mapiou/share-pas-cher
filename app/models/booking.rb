class Booking < ApplicationRecord
  belongs_to :thing
  belongs_to :user
  has_many :reviews
end
