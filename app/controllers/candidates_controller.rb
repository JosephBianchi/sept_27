class CandidatesController < ApplicationController

  def show
    candidates = HTTParty.get('https://represent.opennorth.ca/candidates/')
    candidates_json = JSON.parse(candidates.body)

    render json: {
      names: candidates_json["objects"].map do |candidate|
        candidate["first_name"] + " " + candidate["last_name"]
      end

    }
  end
end
