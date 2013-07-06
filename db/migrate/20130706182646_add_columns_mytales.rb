class AddColumnsMytales < ActiveRecord::Migration
  def up
    add_column :mytales, :mytales_character_id, :integer, references: :mytales_characters
  end

  def down
    remove_column :mytales, :mytales_character_id
  end
end
