module LocationsHelper
    def format_params(params)
        [params[:lat].to_f, params[:lng].to_f]
    end
end
