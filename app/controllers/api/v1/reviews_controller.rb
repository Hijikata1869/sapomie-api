module Api
  module V1
    class ReviewsController < ApplicationController

      def index
        player_reviews = Review.where(player_id: params[:player_id])
        if player_reviews.present?
          render json: { player_reviews: player_reviews }, status: 200
        else
          render json: {}, status: 404
        end
      end

      # current_userが取得できるようになってから実装する
      def create
      end

      def destroy
        review = Review.find(params[:id])
        if review.destroy
          render json: {}, status: 200
        else
          render json: {}, status: 500
        end
      end
      
    end
  end
end