require 'rails_helper'

RSpec.describe 'User', type: :request do
  # initialize test data

  let!(:users) { create(:user) }

  let(:valid_params1) { { email: 'abc155120@example.com', password: 'foobar', password_confirmation: 'foobar' } }
  let(:valid_params2) { { email: 'foo@bar.com', password: 'foobar' } }

  describe 'Signup' do
    # make HTTP get request before each example
    before { post '/api/v1/auth', params: valid_params1 }

    it 'returns courses' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json['data']['email']).to eq('abc155120@example.com')
      expect(json['data']['email']).not_to eq('randomemail@gmail.com')
    end

    it 'returns status code 200' do
      expect(response.status).to eq(200)
      expect(response.status).not_to eq(422)
    end
  end

  describe 'SignIn' do
    # make HTTP get request before each example
    before { login }

    it 'returns courses' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json['data']['email']).to eq('foo@bar.com')
    end

    it 'returns status code 200' do
      expect(response.status).to eq(200)
      expect(response.status).not_to eq(422)
    end
  end

  describe 'SignOut' do
    before { login }

    it 'returns courses' do
      auth_params = get_auth_params_from_login_response_headers(response)
      delete '/api/v1/auth/sign_out', params: auth_params
      expect(json['success']).to be_truthy
      expect(response.status).to eq(200)
    end
  end
end

def login
  post '/api/v1/auth/sign_in', params: valid_params2
end

def get_auth_params_from_login_response_headers(response)
  client = response.headers['client']
  token = response.headers['access-token']
  expiry = response.headers['expiry']
  token_type = response.headers['token-type']
  uid = response.headers['uid']

  {
    'access-token' => token,
    'client' => client,
    'uid' => uid,
    'expiry' => expiry,
    'token-type' => token_type
  }
end
