require 'rails_helper'

RSpec.describe 'Favs', type: :request do
  # initialize test data

  let!(:users) { create(:user) }
  let(:user_id) { users.id }
  let!(:courses) { create(:course) }
  let(:course_id) { courses.id }

  subject { Fav.new(user: users, course: courses) }

  # Test suite for GET /courses
  describe 'GET /favs' do
    # make HTTP get request before each example
    before { get "/api/v1/users/#{user_id}/favs" }

    it 'returns favorite courses' do
      # Note `json` is a custom helper to parse JSON responses
      # json1 = json(response.body)
      expect(json['message']).to eq('Courses Found')
      expect(json['message']).not_to eq('Courses Not Found')
      # expect(.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response.status).to eq(200)
      expect(response.status).not_to eq(404)
    end
  end

  describe 'Post /favs' do
    # make HTTP get request before each example
    let(:valid_attributes) { { course_id: course_id } }

    before { post "/api/v1/users/#{user_id}/favs", params: valid_attributes }

    it 'returns favorite courses' do
      # Note `json` is a custom helper to parse JSON responses
      # json1 = json(response.body)
      expect(json['message']).to eq('Added to favorites')
      # expect(json["message"]).not_to eq("Courses Not Found")
      # expect(.size).to eq(1)
    end

    it 'returns status code 200' do
      expect(response.status).to eq(200)
      # expect(response.status).not_to eq(404)
    end
  end
end
