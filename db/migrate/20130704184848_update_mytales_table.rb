class UpdateMytalesTable < ActiveRecord::Migration
  def up
    add_column :mytales, :title, :string
    add_column :mytales, :main_character, :string
    add_column :mytales, :main_character_gender, :string
  end

  def down
    remove_column :mytales, :title
    remove_column :mytales, :main_character
    remove_column :mytales, :main_character_gender
  end
end
