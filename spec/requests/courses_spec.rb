require 'rails_helper'

RSpec.describe 'Courses', type: :request do
  # initialize test data

  let!(:courses) { create(:course) }
  let(:course_id) { courses.id }

  # Test suite for GET /courses
  describe 'GET /courses' do
    # make HTTP get request before each example
    before { get '/api/v1/courses' }

    it 'returns courses' do
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

  describe 'GET /courses/:course_id' do
    # make HTTP get request before each example
    before { get "/api/v1/courses/#{course_id}" }

    it 'returns a course' do
      # Note `json` is a custom helper to parse JSON responses
      # json1 = json(response.body)
      expect(json['message']).to eq('Course found')
      expect(json['message']).not_to eq('Courses Not Found')
    end

    it 'returns necessary data' do
      expect(json['data']['fee']).to eq(25)
      expect(json['data']['fee']).not_to eq(100)
    end
  end
end
