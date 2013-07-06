class RemoveColumnsStories < ActiveRecord::Migration
  def up
    remove_column :stories, :main_character
    remove_column :stories, :main_character_gender
  end

  def down
    add_column :stories, :main_character, :string
    add_column :stories, :main_character_gender, :string
  end
end
