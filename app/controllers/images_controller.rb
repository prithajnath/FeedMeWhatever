class ImagesController < ApplicationController

  def index 
     @img = Image.create(:listing_id => current_user.listing.id) 
  end

  def show
    @img = Image.find(params[:id])
  end

  def update
   @img = Image.find(params[:id])  
    respond_to do |f|
      if @img.update(img_params)
        f.html{ redirect_to @img, notice: 'Photo was successfully uploaded'}
        f.json{ render :show, status: :ok, location: @img }
      else
        f.html { render :edit }
        f.json { render json: @img.errors, status: :unprocessable_entity }
      end
    end
  end

  private
 
    def img_params
      params.require(:image).permit(:pic)
    end
end
