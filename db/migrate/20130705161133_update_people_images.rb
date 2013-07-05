class UpdatePeopleImages < ActiveRecord::Migration
   def up
    add_column :people_images, :gender_id, :integer
    add_column :people_images, :ethnicity_id, :integer
  end

  def down
    remove_column :people_images, :gender_id
    remove_column :people_images, :ethnicity_id
  end
end
