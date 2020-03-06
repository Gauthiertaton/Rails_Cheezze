class RacletteMachinesController < ApplicationController
  def index
    @raclette_machines = RacletteMachine.all.order(:name)
    @user = current_user
    # @raclette_machines = RacletteMachine.all.order(:name)
    @raclette_machines = RacletteMachine.geocoded #returns flats with coordinates

    @markers = @raclette_machines.map do |raclette_machine|
      {
        lat: raclette_machine.latitude,
        lng: raclette_machine.longitude
      }
    end

  end

  def show
    @raclette_machine = RacletteMachine.find(params[:id])
    @reservation = Reservation.new

    @markers = [
      {
        lat: @raclette_machine.latitude,
        lng: @raclette_machine.longitude
      }
    ]
  end

  def new
    @raclette_machine = RacletteMachine.new
  end

  def create
    @raclette_machine = RacletteMachine.new(raclette_machine_params)
    @raclette_machine.user = current_user
    @raclette_machine.save!
    redirect_to raclette_machines_path
  end

  private

  def raclette_machine_params
    params.require(:raclette_machine).permit(:name, :capacity, :address, :accessories, :price, :user_id, :photo)
  end
end
