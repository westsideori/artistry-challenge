class ArtistInstrument < ApplicationRecord
    belongs_to :artist
    belongs_to :instrument

    validates :artist_id, :instrument_id, presence: true
    validates :instrument_id, uniqueness: {scope: :artist_id}
end