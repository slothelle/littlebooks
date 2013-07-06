class UpdateMytales < ActiveRecord::Migration
  def up
    change_table :mytales do |t|
      t.references :mytale_character
    end
  end

  def down
    remove_column :mytales, :mytale_character_id
  end
end
