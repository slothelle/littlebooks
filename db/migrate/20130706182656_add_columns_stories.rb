class AddColumnsStories < ActiveRecord::Migration
  def up
    add_column :stories, :character_id, :integer, references: :characters
  end

  def down
    remove_column :stories, :character_id
  end
end
