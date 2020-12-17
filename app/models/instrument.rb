class Instrument < ApplicationRecord
    has_many :artist_instruments
    has_many :artists, through: :artist_instruments

    validates :name, :classification, presence: true
    validates :name, uniqueness: true
end
