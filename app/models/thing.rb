class Thing < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many :users, through: :bookings

  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
end
