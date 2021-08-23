class TravelPlanSerializer
  include FastJsonapi::ObjectSerializer

  attributes :name, :start_date, :end_date, :destination_id, :destination

  # belongs_to :destination
end
