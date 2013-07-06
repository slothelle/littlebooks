class CreateMytalesCharacters < ActiveRecord::Migration
  def up
    create_table :mytales_characters do |t|
      t.string :name
      t.references :gender
      t.references :mytale
      t.references :character
      t.timestamps
    end
  end

  def down
    drop_table :mytales_characters
  end
end
