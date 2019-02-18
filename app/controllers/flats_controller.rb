require "open-uri"

class FlatsController < ApplicationController
  before_action :set_flats

  def index
    @counter += 1
  end

  def show
    @flat = @flats.find { |f| f["id"] == params["id"].to_i }
  end

  private

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
    @counter = 0
  end
end
