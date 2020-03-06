class Owner::ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
    @raclette_machines = current_user.raclette_machines

  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.status = 'Acceptée'
    @reservation.save!
    redirect_to owner_reservations_path
  end

  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.status = 'Refusée'
    @reservation.save!
    redirect_to owner_reservations_path
  end
end
