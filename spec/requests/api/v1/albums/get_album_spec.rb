require 'rails_helper'

RSpec.describe "Get Album", type: :request do
  describe "GET /api/v1/albums/:id" do
    let(:album) {
      # set up an album to get
      artist = Artist.create(name: "NIN")

      Album.create(name: "The Downward Spiral II", artist_id: 1)
    }

    it "gets the album" do
      get api_v1_album_path(album)
      json_body = JSON.parse(response.body).deep_symbolize_keys

      puts response.body

      # write an expectation about the response status code
      expect(response).to have_http_status(200)

      # write an expecation about the response json_body
      expect(json_body).to include({
        name: "The Downward Spiral II",
        id: album.id
      })

    end
  end
end
