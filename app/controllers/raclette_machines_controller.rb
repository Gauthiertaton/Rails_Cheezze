class RacletteMachinesController < ApplicationController
  def index
    @raclette_machines = RacletteMachine.all.order(:name)
  end

  def show
    @raclette_machine = RacletteMachine.find(params[:id])
  end

  def new
    @raclette_machine = RacletteMachine.new
  end

  def create
    @raclette_machine = RacletteMachine.new(raclette_machine_params)
    if @raclette_machine.save
      redirect_to raclette_machine_path(@raclette_machine)
    else
      render :new
    end
  end
end
