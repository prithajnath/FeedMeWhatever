class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :listing, index: true
      t.timestamps null: false
    end
  end
end
