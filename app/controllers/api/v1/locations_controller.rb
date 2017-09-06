module Api::V1
 class LocationsController < ApiController
    include LocationsHelper
    
    ##format /v1/locations/?lat={latitude}&lng={longitude}&user={user_data}
    def create
        render json: UsersInLocation.call(coordinates_params, user_params)
    end
    
 private
  def coordinates_params
   params.permit(:lat, :lng)
   format_params(params)
  end
  
  def user_params
      params.require(:user).permit(:device_unique_id, :manufacturer, :brand, :model, :device_id,
                 :system_name, :system_version, :bundle_id, :build_number,
                 :version, :readable_version, :device_name, :user_agent,
                 :device_locale, :device_country, :time_zone, :instance_id_android,
                 :is_emulator, :is_tablet, :pin_or_finder)
  end

 end
end


