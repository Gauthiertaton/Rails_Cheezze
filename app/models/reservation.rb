class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :raclette_machine
end
