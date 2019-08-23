require 'rails_helper'

RSpec.describe Album, type: :model do

  let(:artist) { Artist.create( name: "Nine Inch Nails") }

  describe "validations" do
    
    it "is valid" do
      # instantiate a valid album and ensure it is valid

      albym = Album.new(name: "The Downward Spiral II", artist_id: artist.id)
      res = albym.valid?
      error = albym.errors.full_messages

      expect(res).to be true

    end

    it "is invalid without a name" do
      # instantiate an album without a name and ensure it is invalid

      albym = Album.new(name: nil, artist_id: 1)
      res = albym.valid?
      error = albym.errors.full_messages

      expect(res).to be false


    end

  end





  describe "attributes" do
    it "has expected attributes" do
      # ensure exactly the expected attributes are present on an album

      albym = Album.new(name: "The Downward Spiral II", artist_id: artist.id)
      res = albym.attribute_names.map(& :to_sym)

      expect(res).to contain_exactly(
        :name,
        :id,
        :artist_id,
        :available,
        :created_at,
        :updated_at
      )

    end
  end

  context "scopes" do
    describe "available" do
      it "returns a list of available albums sorted by name" do
        # set up a some available albums and unavailable albums and make expecations that the
        # available albums scope only returns available albums sorted by name
      end
    end
  end

  describe "#length_seconds" do

  let(:albym) { Album.create(name: "The Downward Spiral II", artist_id: artist.id) }

  before do

    # WHOOPS - at least rspec told me what I did wrong ;p
      # before do
    # albym = Album.new(name: "The Downward Spiral II", artist_id: artist.id)

    albym.songs.create(title: "Piggy", track_number: 1, length_seconds: 300)
    albym.songs.create(title: "Heresy", track_number: 1, length_seconds: 300)
    albym.songs.create(title: "Closer", track_number: 1, length_seconds: 300)
    albym.songs.create(title: "Becoming", track_number: 1, length_seconds: 300)
  end

    it "calculates the total length in seconds of an album" do
      # setup a valid album and songs and make expecations about the return value of length seconds
      
      res = albym.length_seconds

      expect(res).to eq 1200


    end
  end
end
