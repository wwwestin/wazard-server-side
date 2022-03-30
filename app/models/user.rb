
class User < ActiveRecord::Base
    has_many :trips
    has_many :locations, through: :trips
end