class ChampionsController < ApplicationController
  def index
    response = HTTP.get("http://ddragon.leagueoflegends.com/cdn/11.14.1/data/en_US/champion/#{params[:champion]}.json?api_key=#{Rails.application.credentials.riot_api[:api_key]}")
    render json: response.parse(:json)
  end
end
