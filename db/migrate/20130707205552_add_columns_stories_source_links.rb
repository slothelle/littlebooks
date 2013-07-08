class AddColumnsStoriesSourceLinks < ActiveRecord::Migration
 def up
    add_column :stories, :source_link, :string
    add_column :stories, :attribution, :string
  end

  def down
    remove_column :stories, :source_link
    remove_column :stories, :attribution
  end
end
