class AddShitToUser < ActiveRecord::Migration
  def change
    add_column :users, :bio, :text
    add_column :users, :dob, :datetime
    add_column :users, :location, :string  
  end

end
