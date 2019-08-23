module Api
    module V1
      class PlaylistController < ApplicationController

        def index
            @playlists=User.find(params[:artist_id]).playlists

            render json: @playlists
        end


        def show
            @playlist=Playlist.find(params[:id])

            render json: @playlist

        end

        def create

        end



      end
    end
end