class UpdateStories < ActiveRecord::Migration
  def up
    add_column :stories, :title, :string
    add_column :stories, :main_character, :string
    add_column :stories, :main_character_gender, :string
  end

  def down
    remove_column :stories, :title
    remove_column :stories, :main_character
    remove_column :stories, :main_character_gender
  end
end
