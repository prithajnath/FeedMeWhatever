class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.belongs_to :user, index: true     
      t.string :url
      t.timestamps null: false
    end
  end
end
