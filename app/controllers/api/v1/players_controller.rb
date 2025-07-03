module Api
  module V1
    class PlayersController < ApplicationController
      
      def show
        player = Player.find(params: [:id])
        if player.present?
          render json: { player: player }, status: 200
        else
          render json: {}, status: 404
        end
      end

    end
  end
end