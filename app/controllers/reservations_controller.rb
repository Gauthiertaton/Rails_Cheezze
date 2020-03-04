class ReservationsController < ApplicationController
  def index
    # @reservations = Reservation.raclette_machines.all
  end
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user_id = current_user.id
    @reservation.raclette_machine = RacletteMachine.find(params[:raclette_machine_id])
    @reservation.total_price = (@reservation.reservation_end_date - @reservation.reservation_start_date).to_i * (@reservation.raclette_machine.price).to_i
    @reservation.status = 'Pending'
    @reservation.save!
    redirect_to raclette_machines_path
  end

  def show
    @reservation = Reservation.find(params[:id])
    @reservation = Reservation.new
  end

  private
  def reservation_params
    params.require(:reservation).permit(:status, :total_price, :reservation_end_date, :reservation_start_date, :user_id, :raclette_machine_id)
  end
end
