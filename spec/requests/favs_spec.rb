require 'rails_helper'

RSpec.describe 'Favs', type: :request do
  # initialize test data

  # Test suite for GET /courses
  describe 'GET /favs' do
    # make HTTP get request before each example
    let!(:users) { create(:user) }
    let(:user_id) { users.id }
    let!(:courses) { create(:course) }
    let(:course_id) { courses.id }

    before { login1 }

    it 'returns favorite courses' do
      auth_params = get_auth_params_from_login_response_headers(response)
      get "/api/v1/users/#{user_id}/favs", headers: auth_params
      expect(json['message']).to eq('Courses Found')
      expect(json['message']).not_to eq('Courses Not Found')
      expect(response.status).to eq(200)
      expect(response.status).not_to eq(404)
    end
  end

  describe 'Post /favs' do
    let!(:users) { create(:user) }
    let(:user_id) { users.id }
    let!(:courses) { create(:course) }
    let(:course_id) { courses.id }

    let(:valid_attributes) { { course_id: course_id } }
    before { login1 }

    it 'returns favorite courses' do
      # Note `json` is a custom helper to parse JSON responses
      # json1 = json(response.body)
      auth_params = get_auth_params_from_login_response_headers(response)
      post "/api/v1/users/#{user_id}/favs", params: valid_attributes, headers: auth_params
      expect(json['message']).to eq('Added to favorites')
    end

    it 'returns status code 200' do
      expect(response.status).to eq(200)
      expect(response.status).not_to eq(404)
    end
  end

  describe 'Delete /favs' do
    let!(:users) { create(:user) }
    let(:user_id) { users.id }
    let!(:courses) { create(:course) }
    let(:course_id) { courses.id }
    let(:valid_attributes) { { course_id: course_id } }

    before { login1 }

    it 'returns favorite courses' do
      auth_params = get_auth_params_from_login_response_headers(response)
      # request.headers.merge! user.create_new_auth_token
      post "/api/v1/users/#{user_id}/favs", params: valid_attributes, headers: auth_params
      delete "/api/v1/users/#{user_id}/favs/#{course_id}", params: valid_attributes, headers: auth_params
      expect(json['message']).to eq('Removed from favorites')
    end

    it 'returns status code 200' do
      expect(response.status).to eq(200)
      expect(response.status).not_to eq(404)
    end
  end
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

def login1
  post '/api/v1/auth/sign_in', params: { email: 'foo@bar.com', password: 'foobar' }.to_json,
                               headers: { 'CONTENT_TYPE' => 'application/json', 'ACCEPT' => 'application/json' }
end
