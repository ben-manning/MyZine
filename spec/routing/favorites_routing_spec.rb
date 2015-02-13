require "rails_helper"

RSpec.describe FavoirtesController, type: :routing do
	it 'routes to #new' do
		expect(get('/users/1/favorites/new')).to route_to('favorites#new', user_id: '1')
	end

	it 'routes to #create' do 
		expect(post('/users/1/favorites/')).to route_to('favorites#create', user_id: '1')
	end

	it 'routes to #destory' do
		expect(delete('users/1/favorites/1')).to route_to('favorites#destory', user_id: '1', id: '1')
	end
end