class Thing < ApplicationRecord
  CATEGORY_LIST = ['Outillage & Travaux', 'Matériel de jardin', 'Electroménager', 'Maison & Déco', 'Evénement', 'High Tech', 'Loisirs']
  include PgSearch

  belongs_to :owner, class_name: "User", foreign_key: :user_id
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many :users, through: :bookings
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: Thing::CATEGORY_LIST }
  validates :address, presence: true

  pg_search_scope :search_by_title,
    against: [ :title],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
