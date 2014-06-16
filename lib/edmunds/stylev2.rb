module Edmunds
  class StyleV2 < API

  	def find(make, model, year)
      @base = "https://api.edmunds.com/api/vehicle/v2"
      @url = "/#{make}/#{model}/#{year}/styles?"
      call_api
      @json["styles"]
    rescue
      return false
    end

    def get_details_by_style_id(style_id)
      @base = 'https://api.edmunds.com/api/vehicle/v2'
      @url = "/styles/#{style_id}?"
      call_api
    rescue
      return false
    end
  end

end