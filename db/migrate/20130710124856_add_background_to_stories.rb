class AddBackgroundToStories < ActiveRecord::Migration
  def change
    add_column :stories, :background_image_id, :integer, references: :background_images
  end
end
