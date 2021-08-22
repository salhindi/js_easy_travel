class Api::V1::DestinationController < ApplicationController
    def index
        destination = Destination.all
        render json: DestinationSerializer.new(destination)
        end
    
    end
    
end
