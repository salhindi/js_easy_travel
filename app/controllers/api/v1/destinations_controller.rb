class Api::V1::DestinationsController < ApplicationController
    def index
        destinations = Destination.all
        render json: DestinationSerializer.new(destinations)
        
    end

    def create
        destination = Destination.new(destination_params)
        if destination.save
            render json: DestinationSerializer.new(destination), status: :accepted
        else
            render json: {errors: destination.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private
    
    def destination_params
        params.require(:destination).permit(:city, :country, :description)
    end

  
    
end
