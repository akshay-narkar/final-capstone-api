module Api
  module V1
    class FavsController < ApplicationController
      before_action :authenticate_user!

      def index
        favs = current_user.courses
        # favs = User.find_by_id(newparams[:user_id]).courses;
        render json: { status: 'SUCCESS', message: 'Courses Found', data: favs }, status: :ok
      end

      def create
        # fav = Fav.create(user_id: current_user.id,course_id: newparams[:id])
        fav = current_user.favs.build(newparams)
        if fav.save
          render json: { status: 'SUCCESS', message: 'Add to favorites', data: fav }, status: :ok
        else
          render json: { status: 'Failure', message: 'Could not add to favorites', data: fav.errors }, status: :fail
        end
      end

      def destroy
        favs = current_user.favs.where(course_id: newparams[:course_id])
        # delete = Fav.where(user_id: current_user.id,course_id: newparams[:id])
        if favs.destroy
          render json: { status: 'SUCCESS', message: 'Removed from favorites', data: delete }, status: :ok
        else
          render json: { status: 'Failure', message: 'Could not remove from favorites', data: delete.errors }, status: :fail
        end
      end

      private

      def newparams
        params.permit(:user_id, :id, :course_id)
      end
    end
  end
end
