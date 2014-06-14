module Edmunds
  class SpecsV2 < API

    def find_by_style_id(style_id)
      @base = "https://api.edmunds.com/api/vehicle/v2"
      @url = "/styles/#{style_id}/engines?"
      call_api
      @json['engines']
    rescue
      return false
    end

  end

end