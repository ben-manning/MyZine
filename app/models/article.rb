class Article < ActiveRecord::Base
	has_many :favorites, dependent: :destroy

	validates :title, presence: true
	validates :url, presence: true
	validates :api_url, presence: true
end
