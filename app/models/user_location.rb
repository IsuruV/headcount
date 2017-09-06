class UserLocation < ActiveRecord::Base
    belongs_to :user
    belongs_to :location
    validates_uniqueness_of :user_id, :scope => :location_id
end