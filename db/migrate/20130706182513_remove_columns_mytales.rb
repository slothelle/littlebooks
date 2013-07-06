class RemoveColumnsMytales < ActiveRecord::Migration
  def up
    remove_column :mytales, :main_character
    remove_column :mytales, :main_character_gender
  end

  def down
    add_column :mytales, :main_character, :string
    add_column :mytales, :main_character_gender, :string
  end
end
