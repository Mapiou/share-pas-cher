class Thing < ApplicationRecord
  CATEGORY_LIST = ['Outillage & Travaux', 'Matériel de jardin', 'Electroménager', 'Maison & Déco', 'Evénement', 'High Tech', 'Loisirs']

  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many :users, through: :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :category, inclusion: { in: Thing::CATEGORY_LIST }
end
