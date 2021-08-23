class TravelPlan < ApplicationRecord
    belongs_to :destination

    validates_presence_of :name, :start_date, :end_date, :destination_id
end
