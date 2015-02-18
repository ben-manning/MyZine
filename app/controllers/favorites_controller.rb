class FavoritesController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@user = current_user.id
		@articles = current_user.articles
	end

	def new
	end

	def create
		response = HTTParty.get(params[:api_url] + '?api-key=' + ENV['guardian_key']).parsed_response['response']['content']
		
		@article = Article.new(title: response['webTitle'], url: response['webUrl'], api_url: response['apiUrl'])
		@article.save

		Favorite.create(user_id: current_user.id, article_id: @article.id)
	end

	def destroy
		@article = Article.find(params[:id])
        @article.destroy
 
        redirect_to user_favorites_path
	end
end
