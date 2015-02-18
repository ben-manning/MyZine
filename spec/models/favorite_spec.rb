require 'rails_helper'

RSpec.describe Favorite, type: :model do
  describe 'Database' do
  	it { is_expected.to have_db_column(:user_id).with_options(type: :string) }
  	it { is_expected.to have_db_column(:article_id).with_options(type: :string) }
  end

  describe 'Attributes' do
  	it { is_expected.to respond_to :user_id }
  	it { is_expected.to respond_to :article_id }
  end

  describe 'Validations' do
  	it { is_expected.to validate_presence_of :user_id }
  	it { is_expected.to validate_presence_of :article_id }
  end

  describe 'Associations' do
  	it { is_expected.to belong_to :user }
  	it { is_expected.to belong_to :article }
  end
end
