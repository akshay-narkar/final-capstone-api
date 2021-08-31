module Api
  module V1
    class FavsController < ApplicationController
      before_action :authenticate_api_v1_user!

      def index
        favs = current_user.courses
        # favs = User.find_by_id(newparams[:user_id]).courses
        render json: { status: 'SUCCESS', message: 'Courses Found', data: favs }, status: :ok
      end

      def create
        # fav = Fav.create(user_id: newparams[:user_id], course_id: courseparams[:course_id])
        fav = current_user.favs.build(courseparams)
        if fav.save
          render json: { status: 'SUCCESS', message: 'Added to favorites', data: fav }, status: :ok
        else
          render json: { status: 'Failure', message: 'Could not add to favorites', data: fav.errors }, status: status
        end
      end

      def destroy
        delete = current_user.favs.where(course_id: newparams[:course_id])
        # delete = Fav.where(user_id: newparams[:user_id], course_id: courseparams[:course_id])
        if favs.destroy
          render json: { status: 'SUCCESS', message: 'Removed from favorites', data: delete }, status: :ok
        else
          render json: { status: 'Failure', message: 'Could not remove from favorites', data: delete.errors }, status: status
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
