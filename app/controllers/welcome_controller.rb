class WelcomeController < ApplicationController
  def index
    @something = ClarifaiRuby::TagRequest.new.get("http://res.cloudinary.com/dzmp7xptn/image/upload/v1471102345/taco_lww6md.jpg", model: "food-items-v0.1")
  end
end
