class WelcomeController < ApplicationController
  def index
    @something = ClarifaiRuby::TagRequest.new.get("https://samples.clarifai.com/metro-north.jpg")
  end
end
