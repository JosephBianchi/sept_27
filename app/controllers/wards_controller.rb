class WardsController < ApplicationController
  def show
    toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
    toronto_wards_json = JSON.parse(toronto_wards_response.body)

    render json: {
      ward_names: toronto_wards_json["objects"].map { |ward| ward["name"] }
    }
  end


end
