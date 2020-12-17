class CreateArtistInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_instruments do |t|
      t.integer :artist_id
      t.integer :instrument_id
    end
  end
end
