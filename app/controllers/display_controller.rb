class DisplayController < ApplicationController

  def show
    @food = ClarifaiRuby::TagRequest.new.get(Picture.find(params[:id]).url.to_s, model: "food-items-v0.1")
  end

end
