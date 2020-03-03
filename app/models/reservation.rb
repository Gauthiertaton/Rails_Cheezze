class Reservation < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :raclette_machine, optional: true
end
