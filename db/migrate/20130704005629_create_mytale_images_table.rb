class CreateMytaleImagesTable < ActiveRecord::Migration
  def change
    create_table :mytale_images do |t|
      t.references :people_image
      t.references :mytale
      t.timestamps
    end
  end
end
