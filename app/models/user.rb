
class User < ActiveRecord::Base
    has_many :trips
    has_many :location, through: :trips
end