class ReservationsController < ApplicationController
  def index
    # @reservations = Reservation.raclette_machines.all
  end
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save!
    redirect_to raclette_machines_path
  end

  private
  def reservation_params
    params.require(:reservation).permit(:status, :total_price, :reservation_end_date, :reservation_start_date, :user_id, :raclette_machine_id)
  end
end