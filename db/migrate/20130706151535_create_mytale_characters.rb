class CreateMytaleCharacters < ActiveRecord::Migration
  def up
    create_table :mytale_characters do |t|
      t.string :name
      t.references :gender
      t.references :character
      t.references :mytale
    end
  end

  def down
    drop_table :mytale_characters
  end
end
