class RacletteMachine < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user
  has_one_attached :photo
end
