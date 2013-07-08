class AddImagesToMytales < ActiveRecord::Migration
  def change
    add_column :mytales, :mytale_image_id, :integer, references: :mytale_images
  end
end
