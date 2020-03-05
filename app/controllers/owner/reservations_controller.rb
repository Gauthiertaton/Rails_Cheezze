class Owner::ReservationsController < ApplicationController
  def index
    @reservations = current_user.reservations
  end

  def accept
    @reservation = Reservation.find(params[:id])
    @reservation.status = 'Acceptée'
    @reservation.save!
    redirect_to owner_reservations_path
  end

  def decline
    @reservation = Reservation.find(params[:id])
    @reservation.status = 'Annulée'
    @reservation.save!
    redirect_to owner_reservations_path
  end
end
