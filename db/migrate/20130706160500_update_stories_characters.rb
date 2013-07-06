class UpdateStoriesCharacters < ActiveRecord::Migration
  def up
    change_table :stories do |t|
      t.references :character
    end
  end

  def down
    remove_column :stories, :character_id
  end
end
