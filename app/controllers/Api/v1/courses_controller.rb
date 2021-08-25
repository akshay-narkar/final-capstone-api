module Api
  module V1
    class CoursesController < ApplicationController
     
      def index
           courses = Course.order('created_at DESC');
           render json: {status: 'SUCCESS',message: 'Courses Found', data:courses}, status: :ok
      end
      
      def new

      end

      def create

      end

      def show
        course = Course.find(params[:id])
        render json: {status: 'Success',message: 'Course found', data:course}, status: :ok
      end
    end
  end
end
