class CreateCharacters < ActiveRecord::Migration
  def up
    create_table :characters do |t|
      t.string :name
      t.references :story
      t.references :gender
    end
  end

  def down
    drop_table :characters
  end
end
