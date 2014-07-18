module Edmunds

  # v1
  class EditorReviews < API

    def find(make, model, year)
      @url = "/editorreviews?make=#{make}&model=#{model}&year=#{year}&"
      call_editor_reviews_api
    end

    private

    def call_editor_reviews_api
      @base = "http://api.edmunds.com/v1/content"
      call_api
      @json
    end

  end

end