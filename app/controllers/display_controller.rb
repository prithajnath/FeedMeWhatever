class DisplayController < ApplicationController

  def show
    @food = ClarifaiRuby::TagRequest.new.get(Image.find_by(params[:id]).pic.url, model: "food-items-v0.1")
  end

end
