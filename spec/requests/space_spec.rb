require 'rails_helper'

RSpec.describe 'spaces', type: :request do
  describe 'GET /v1/api/bookings' do
    it 'return 200 code for the url' do
      create :space

      get('/api/v1/spaces/1')
      expect(response.status).to eq 200
    end

    it 'returns space as json object' do
      space = create :space

      get('/api/v1/spaces/1')
      expected_response = { id: space.id, 
                            :name => space.name,
                            :created_at => space.created_at,
                            :updated_at => space.updated_at
                          }

      expect(response.body).to eq(expected_response.to_json) 
    end  
  end
end
