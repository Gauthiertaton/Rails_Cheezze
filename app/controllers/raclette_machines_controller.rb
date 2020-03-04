class RacletteMachinesController < ApplicationController
  def index
    @raclette_machines = RacletteMachine.all.order(:name)
  end

  def show
    @raclette_machine = RacletteMachine.find(params[:id])
    @reservation = Reservation.new
  end

  def new
    @raclette_machine = RacletteMachine.new
  end

  def create
    @raclette_machine = RacletteMachine.new(raclette_machine_params)
    @raclette_machine.save!
    redirect_to raclette_machines_path

    # raise
  end
   private

  def raclette_machine_params
    params.require(:raclette_machine).permit(:name, :capacity, :address, :accessories, :price, :user_id, :photo)
  end
end
