class FavoritesController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@articles = Article.all
	end

	def new
	end

	def create
		response = HTTParty.get(params[:api_url] + '?api-key=crvbm7znwyhymyp34fk799ca').parsed_response['response']['content']
		
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
