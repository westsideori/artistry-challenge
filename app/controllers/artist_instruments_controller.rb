class ArtistInstrumentsController < ApplicationController
    def new
        @artist_instrument = ArtistInstrument.new
        @artists = Artist.all
        @instruments = Instrument.all
    end

    def create
        artist_instrument = ArtistInstrument.create(artist_instrument_params(:artist_id, :instrument_id))
        if artist_instrument.valid?
            redirect_to artist_path(artist_instrument.artist)
        else
            flash[:errors_array] = artist_instrument.errors.full_messages
            redirect_to new_artist_instrument_path(artist_instrument)
        end
    end

    private

    def artist_instrument_params(*args)
        params.require(:artist_instrument).permit(*args)
    end
end
