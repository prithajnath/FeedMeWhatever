class AddPicToImage < ActiveRecord::Migration
  def change
    add_attachment :images, :pic
  end
end
