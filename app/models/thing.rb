class Thing < ApplicationRecord
  CATEGORY_LIST = ['Outillage & Travaux', 'Matériel de jardin', 'Electroménager', 'Maison & Déco', 'Evénement', 'High Tech']

  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many :users, through: :bookings

  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :category, inclusion: { in: Thing::CATEGORY_LIST }
end
