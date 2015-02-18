require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'Database' do
  	it { is_expected.to have_db_column(:title).with_options(type: :string) }
  	it { is_expected.to have_db_column(:url).with_options(type: :string) }
  	it { is_expected.to have_db_column(:api_url).with_options(type: :string) }
  end

  describe 'Attributes' do
  	it { is_expected.to respond_to :title }
  	it { is_expected.to respond_to :url }
  	it { is_expected.to respond_to :api_url }
  end

  describe 'Validations' do
  	it { is_expected.to validate_presence_of :title }
  	it { is_expected.to validate_presence_of :url }
  	it { is_expected.to validate_presence_of :api_url }
  end

  describe 'Associations' do
    it { is_expected.to have_many(:favorites).dependent(:destroy) }
  end
end
