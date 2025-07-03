module Api
  module V1
    class UsersController < ApplicationController

      def create
        user = User.new(user_create_params)
        if user.save
          render json: {}, status: 200
        else
          render json: {}, status: 422
        end
      end

      def show
        user = User.find(params[:id])
        if user.present?
          render json: { user: user }, status: 200
        else
          render json: {}, status: 404
        end
      end

      def update
        user = User.find(params[:id])
        if user.update(user_update_params)
          render json: {}, status: 200
        else
          render json: { message: user.errors.full_messages.join(", ") }, status: 422
        end
      end

      def destroy
        user = User.find(params[:id])
        if user.destroy
          render json: {}, status: 200
        else
          render json: { message: user.errors.full_messages.join(", ") }, status: 422
        end
      end

      def reviews
        user_reviews = Review.where(user_id: params[:id])
        if user_reviews.present?
          render json: { user_reviews: user_reviews }, status: 200
        else
          render json: {}, status: 404
        end
      end

      private
      def user_create_params
        params.require(:user).permit(:nickname, :email, :password, :password_confirmation)
      end

      def user_update_params
        params.require(:user).permit(:nickname, :email, :self_introduction)
      end

    end
  end
end