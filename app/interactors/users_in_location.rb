class UsersInLocation
    attr_accessor :coordinates, :user_creds, :user
    
    def self.call(*args)
        new(*args).call
    end
    
    def initialize(coordinates_params, user_params)
        self.coordinates = coordinates_params
        self.user_creds =  user_params.to_h
    end
    
    def call
        self.find_or_create_user
        self.add_location
        self.return_locations_user_count
    end
    
    def find_or_create_user
        self.user = User.create_with(self.user_creds).find_or_create_by(device_unique_id: self.user_creds[:device_unique_id])
        self.user.update(self.user_creds)
        self.user.touch
    end
    
    def return_locations_user_count
        Location.user_count(self.coordinates)
    end
    
    def add_location
        geo = Geokit::Geocoders::GoogleGeocoder.reverse_geocode coordinates
        location = Location.find_or_create_by(city: geo.city, zipcode: geo.zip, address: geo.full_address, lat_string: geo.lat.to_s, lng_string: geo.lng.to_s)
        location.update(lat: geo.lat, lng: geo.lng)
        if !location.users.exists?(self.user.id)
           location.users.push(self.user)
        end
        
        # require 'pry'; binding.pry
        # location = Location.find_or_create_by(city: geo.city, zipcode: geo.zip, address: geo.full_address, lat_string: geo.lat.to_s, lng_string: geo.lng.to_s)
        
    end 
end

# geo = Geokit::Geocoders::GoogleGeocoder.reverse_geocode "40.7062646,-73.7930477"