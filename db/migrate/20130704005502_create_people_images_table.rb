class CreatePeopleImagesTable < ActiveRecord::Migration
  def change
    create_table :people_images do |t|
      t.string :url
      t.timestamps
    end
  end
end
