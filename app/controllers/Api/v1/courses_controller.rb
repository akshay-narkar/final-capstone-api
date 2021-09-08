module Api
  module V1
    class CoursesController < ApplicationController
      def index
        courses = Course.all
        render json: { status: 'SUCCESS', message: 'Courses Found', data: courses }, status: :ok
      end

      def show
        course = Course.find(newparams[:id])
        render json: { status: 'Success', message: 'Course found', data: course }, status: :ok
      end

      private

      def newparams
        params.permit(:id)
      end
    end
  end
end
