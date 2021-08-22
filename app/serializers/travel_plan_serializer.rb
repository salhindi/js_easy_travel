class TravelPlanSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :start_date, :end_date, :destination

  belongs_to :destination
end
