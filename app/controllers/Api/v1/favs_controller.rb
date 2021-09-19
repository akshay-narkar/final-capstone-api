module Api
  module V1
    class FavsController < ApplicationController
      before_action :authenticate_api_v1_user!

      def index
        favs = current_api_v1_user.courses
        render json: { status: 'SUCCESS', message: 'Courses Found', data: favs }, status: :ok
      end

      def new
        favs = current_api_v1_user.favs
        render json: { status: 'SUCCESS', message: 'Courses Found', data: favs }, status: :ok
      end

      def create
        fav = current_api_v1_user.favs.build(courseparams)
        if fav.save
          render json: { status: 'SUCCESS', message: 'Added to favorites', data: fav }, status: :ok
        else
          render json: { status: 'Failure', message: 'Could not add to favorites', data: fav.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        delete1 = Fav.find_by(course_id: params[:course_id], user_id: params[:user_id])
        if delete1
          if delete1.destroy
            render json: { status: 'SUCCESS', message: 'Removed from favorites', data: delete1 }, status: :ok
          else
            render json: { status: 'Failure', message: 'Could not remove from favorites', data: delete1.errors }, status: :unprocessable_entity
          end
        else
          render json: { status: 'Failure', message: 'No data found', data: delete1 }, status: :unprocessable_entity
        end
      end

      private

      def newparams
        params.permit(:user_id)
      end

      def courseparams
        params.permit(:course_id)
      end
    end
  end
end
