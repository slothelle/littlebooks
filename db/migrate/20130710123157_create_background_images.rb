class CreateBackgroundImages < ActiveRecord::Migration
  def up
    create_table :background_images do |t|
      t.string :url
      t.references :story
      t.timestamps
    end
  end

  def down
    drop_table :background_images
  end
end
