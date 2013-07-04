class CreateStoriesTable < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :summary
      t.text   :content
      t.timestamps
    end
  end
end
