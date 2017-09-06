class Location < ApplicationRecord
    has_many :user_locations
    has_many :users, :through => :user_locations
        
     belongs_to :locatable, :polymorphic => true
     acts_as_mappable
     
    #  def self.user_count(coordinates)
    #      self.closest(:origin=> coordinates).first.users.count
    #  end
     
     def self.user_count(coordinates)
         locations = self.within(10, :origin => coordinates)
         users = locations.map { |location| location.users.where("updated_at >= ?", Time.zone.now.beginning_of_day) }
         users[0].count
     end
end
