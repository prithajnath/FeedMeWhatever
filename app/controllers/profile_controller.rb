class ProfileController < ApplicationController

  before_action :create_listing, :check_empty_images

  def index
    @user = current_user
  end

  def create_listing
    if !current_user.listing
      Listing.create(:user_id => current_user.id).save
    end
  end

  def check_empty_images
    current_user.listing.images.each do |i|
      if !i.pic_file_name
        i.destroy
      end
    end
  end



end
