class RemoveColumnPeopleImages < ActiveRecord::Migration
  def up
    remove_column :people_images, :ethnicity_id
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
