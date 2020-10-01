class Api::V1::TripsController < ActionController::API
    def index
      trips = Trip.all
      trips = trips.map do |trip|
        { id: trip.id, name: trip.name, country: trip.country, days: trip.days }
      end
      
      render json: { results: trips }.to_json, status: :ok
    end
  end