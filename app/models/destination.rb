class Destination < ApplicationRecord
    has_many :travel_plans

    validates_presence_of :city, :country, :description
    validates_uniqueness_of :city
end
