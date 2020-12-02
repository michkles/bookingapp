require 'rails_helper'

RSpec.describe 'bookings', type: :request do
  describe 'GET /v1/api/bookings' do
    it 'return 200 code for the url' do
      get('/api/v1/bookings/index')
      expect(response.status).to eq 200
    end

    it 'returns booking as json object' do
      booking = create :booking

      get('/api/v1/bookings/index')
      expected_response = { id: booking.id, 
                            :start_date=> booking.start_date, 
                            :end_date => booking.end_date, 
                            :description => booking.description, 
                            :space_id => booking.space_id,
                            :created_at => booking.created_at,
                            :updated_at => booking.updated_at
                          }

      expect(response.body).to eq([expected_response].to_json) 
    end  

    it "returns a correct size of json objects" do
      booking1 = create(:booking)
      booking2 = create(:booking)
      get('/api/v1/bookings/index')
      expect(JSON.parse(response.body).count).to eq(2)  
    end
  end
end
