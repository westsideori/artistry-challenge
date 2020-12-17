class ArtistsController < ApplicationController
    before_action :find_artist, only: [:show, :edit, :update, :destroy]
    
    def index
        @artists = Artist.all
    end

    def show
    end

    def new
        @artist = Artist.new
    end

    def create
        artist = Artist.create(artist_params(:name, :age, :title))
        if artist.valid?
            redirect_to artist_path(artist)
        else
            flash[:errors_array] = artist.errors.full_messages
            redirect_to new_artist_path(artist)
        end
    end

    def edit
    end

    def update
        if @artist.update(artist_params(:name, :age, :title))
            redirect_to artist_path(@artist)
        else
            flash[:errors_array] = @artist.errors.full_messages
            redirect_to edit_artist_path(@artist)
        end
    end

    def destroy
        @artist.destroy
        redirect_to artists_path
    end

    private

    def find_artist
        @artist = Artist.find(params[:id])
    end

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end

end
