module Api
  module V1
    class LeaguesController < ApplicationController
      
      def index
        leagues = League.all
        render json: { leagues: leagues }, status: 200
      end

      def clubs
        clubs = Club.where(league_id: params[:id])
        if clubs.present?
          render json: { clubs: clubs }, stauts: 200
        else
          render json: {}, status: 404
        end
      end
      
    end
  end
end