class DisplayController < ApplicationController

  require 'base64'

  def show
    @food = ClarifaiRuby::TagRequest.new.get(Base64.encode64(Image.find_by(params[:id]).pic.url), model: "food-items-v0.1")
  end

end
