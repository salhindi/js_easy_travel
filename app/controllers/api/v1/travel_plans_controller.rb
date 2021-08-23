class Api::V1::TravelPlansController < ApplicationController

    def index
        travel_plans = TravelPlan.all
        render json: TravelPlanSerializer.new(travel_plans)
    end

    def create
        travel_plan = TravelPlan.new(travel_plan_params)
        # binding.pry
        if travel_plan.save
            render json: travel_plan, status: :accepted
        else
            render json: {errors: travel_plan.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private
    
    def travel_plan_params
        params.require(:travel_plan).permit(:name, :start_date, :end_date, :destination_id)
    end

end

