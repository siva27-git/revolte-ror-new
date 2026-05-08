require 'rails_helper'

RSpec.describe 'Hello API', type: :request do
  describe 'GET /api/v1/hello/world' do
    it 'returns a successful response' do
      get '/api/v1/hello/world'

      expect(response).to have_http_status(:success)
    end

    it 'returns the correct JSON response' do
      get '/api/v1/hello/world'

      expect(response.content_type).to eq('application/json; charset=utf-8')
      expect(JSON.parse(response.body)).to eq({ 'message' => 'Hello, World!' })
    end

    it 'returns the expected message' do
      get '/api/v1/hello/world'

      json_response = JSON.parse(response.body)
      expect(json_response['message']).to eq('Hello, World!')
    end
  end
end