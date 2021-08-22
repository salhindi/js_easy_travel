class DestinationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :city, :country, :description
end
