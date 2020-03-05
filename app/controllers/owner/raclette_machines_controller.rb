class Owner::RacletteMachinesController < ApplicationController
  def index
    @raclette_machines = current_user.raclette_machines
  end
end
