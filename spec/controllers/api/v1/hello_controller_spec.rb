require 'rails_helper'

RSpec.describe Api::V1::HelloController, type: :controller do
  describe 'GET #world' do
    it 'returns a successful response' do
      get :world

      expect(response).to have_http_status(:success)
    end

    it 'returns the correct JSON response' do
      get :world

      expect(response.content_type).to eq('application/json; charset=utf-8')
      expect(JSON.parse(response.body)).to eq({ 'message' => 'Hello, World!' })
    end

    it 'returns the expected message' do
      get :world

      json_response = JSON.parse(response.body)
      expect(json_response['message']).to eq('Hello, World!')
    end
  end
end