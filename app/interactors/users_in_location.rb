class UsersInLocation
    attr_accessor :coordinates, :user_creds
    
    def self.call(*args)
        new(*args).call
    end
    
    def initalize(coordinates_params, user_params)
        self.coordinates = coordinates_params.to_h
        self.user_creds =  user_params.to_h
    end
    
    def call
        self.find_or_create_user
        self.return_locations_user_count
    end
    
    def find_or_create_user
        User.create_with(self.user_creds)
            .find_or_create_by(device_unique_id: self.user_creds[:device_unique_id])
    end
    
    def return_locations_user_count
        Location.user_count(self.coordinates)
    end
end

