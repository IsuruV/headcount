module Api::V1
 class LocationsController < ApiController
    include LocationsHelper
    
    ##format /v1/locations/?lat={latitude}&lng={longitude}
    def index
        render json: Location.user_count(coordinates_params)
    end
    
private
  def coordinates_params
   params.permit(:lat, :lng)
   format_params(params)
  end

 end
end