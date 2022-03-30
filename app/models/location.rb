
class Location < ActiveRecord::Base
    has_many :trips
    has_many :users, through: :trips
end