class ProfileController < ApplicationController

  before_action :create_listing

  def index
    @user = current_user
  end

  def create_listing
    if !current_user.listing
      Listing.create(:user_id => current_user.id).save
    end
  end

end
