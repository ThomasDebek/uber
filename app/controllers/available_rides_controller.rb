class AvailableRidesController < ApplicationController
  def index
    @available_rides = Ride.pending
  end
end
