class Location < ApplicationRecord
    has_many :user_locations
    has_many :users, :through => :user_locations
    
     belongs_to :locatable, :polymorphic => true
     acts_as_mappable
end
