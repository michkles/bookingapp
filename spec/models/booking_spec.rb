require "rails_helper"

RSpec.describe Booking, type: :model do
    describe 'associations' do
      it { should belong_to(:space) }
    end
  
    describe 'validations' do
      it { should validate_presence_of(:start_date) }
      it { should validate_presence_of(:end_date) }
    end
  end
  