module Api
  module V1
    class FavsController < ApplicationController
      before_action :authenticate_api_v1_user!

      def index
        favs = current_api_v1_user.courses
        # favs = User.find_by_id(newparams[:user_id]).courses
        render json: { status: 'SUCCESS', message: 'Courses Found', data: favs }, status: :ok
      end

      def create
        # fav = Fav.create(user_id: newparams[:user_id], course_id: courseparams[:course_id])
        fav = current_api_v1_user.favs.build(courseparams)
        if fav.save
          render json: { status: 'SUCCESS', message: 'Added to favorites', data: fav }, status: :ok
        else
          render json: { status: 'Failure', message: 'Could not add to favorites', data: fav.errors }, status: :unprocessable_entity
        end
      end

      def destroy
        delete1 = current_api_v1_user.favs.find_by(course_id: params[:course_id])
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
