require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
  	it { is_expected.to have_many(:favorites).dependent(:destroy) }
  	it { is_expected.to have_many(:articles).through(:favorites) }
  end
end
