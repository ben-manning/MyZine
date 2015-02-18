class ArticlesController < ApplicationController
  def index
  	results = HTTParty.get("http://content.guardianapis.com/search?q=#{params[:q]}&api-key=crvbm7znwyhymyp34fk799ca")
  	@articles = results.parsed_response["response"]["results"]
  end
end
