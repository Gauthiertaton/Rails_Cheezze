class RacletteMachine < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user, optional: true
  has_one_attached :photo
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
