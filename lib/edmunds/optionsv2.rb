module Edmunds
  class OptionsV2 < API

    def find_by_style_id(style_id)
      @base = "https://api.edmunds.com/api/vehicle/v2"
      @url = "/styles/#{style_id}/options?"
      call_api
      @json['options']
    rescue
      return false
    end

  end

end