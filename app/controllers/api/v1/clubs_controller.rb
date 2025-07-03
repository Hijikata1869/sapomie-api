module Api
  module V1
    class ClubsController < ApplicationController

      def show
        club = Club.find(params[:id])
        if club.present?
          render json: { club: club }, status: 200
        else
          render json: {}, status: 404
        end
      end

    end
  end
end