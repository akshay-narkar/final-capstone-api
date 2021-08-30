require 'rails_helper'

RSpec.describe 'User', type: :request do
  # initialize test data

  let!(:users) { create(:user) }

  let(:valid_params1) { { email: 'abc155120@example.com', password: 'foobar', password_confirmation: 'foobar' } }
  let(:valid_params2) { { email: 'foo@bar.com', password: 'foobar', password_confirmation: 'foobar' } }

  describe 'Signup' do
    # make HTTP get request before each example
    before { post '/api/v1/auth', params: valid_params1 }

    # before { post '/api/v1/auth', body: valid_params }

    it 'returns courses' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json['data']['email']).to eq('abc155120@example.com')
      expect(json['data']['email']).not_to eq('randomemail@gmail.com')
      # expect(.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response.status).to eq(200)
      expect(response.status).not_to eq(422)
    end
  end

  describe 'SignIn' do
    # make HTTP get request before each example
    before { post '/api/v1/auth/sign_in', params: valid_params2 }

    # before { post '/api/v1/auth', body: valid_params }

    it 'returns courses' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json['data']['email']).to eq('foo@bar.com')
      # expect(json['data']['email']).not_to eq('randomemail@gmail.com')
      # expect(.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response.status).to eq(200)
      expect(response.status).not_to eq(422)
    end
  end
end
