class RacletteMachine < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user
end