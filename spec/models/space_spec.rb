require "rails_helper"

RSpec.describe Space, type: :model do
    describe 'associations' do
      it { should have_many(:bookings) }
    end
  
    describe 'validations' do
      it { should validate_presence_of(:name) }
    end
  end