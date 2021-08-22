class Api::V1::DestinationsController < ApplicationController
    def index
        destination = Destination.all
        render json: DestinationSerializer.new(destination)
        end
    
    end
    
end
