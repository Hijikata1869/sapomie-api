module Api
  module V1
    class PlayersController < ApplicationController
      
      def show
        player = Player.find(params: [:id])
        if player.present?
          render json: { player: player}, status: 200
        else
          render json: {}, status: 404
        end
      end

      def reviews
        player_reviews = Review.where(player_id: params[:id])
        if player_reviews.present?
          render json: { player_reviews: player_reviews }, status: 200
        else
          render json: {}, status: 404
        end
      end

    end
  end
end