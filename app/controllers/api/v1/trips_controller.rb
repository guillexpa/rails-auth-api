class Api::V1::TripsController < Api::ApplicationController
    before_action :set_trip, only: [:show, :update, :destroy]
    
    def index
        trips = Trip.all.map do |trip|
            { id: trip.id, name: trip.name, country: trip.country, days: trip.days }
        end
        json_response({results: trips})
    end

    def create
        trip = Trip.create!(trip_params)
        json_response(trip, :created)
    end

    def show
        json_response({result: @trip})
    end

    def update
        @trip.update(trip_params)
    end

    def destroy
        @trip.destroy
    end


    private

    def trip_params
      params.permit(:name, :country, :days)
    end
  
    def set_trip
      @trip = Trip.find(params[:id])
    end

    def json_response(object, status = :ok)
        render json: object, status: status
    end
  
  end