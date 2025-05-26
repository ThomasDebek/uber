class AvailableRidesController < ApplicationController
  def index
    @available_rides = Ride.pending
  end

  def create
    @ride = Ride.pending.find(params[:ride_id])
  end
end
