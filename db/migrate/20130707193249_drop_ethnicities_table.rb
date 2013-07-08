class DropEthnicitiesTable < ActiveRecord::Migration
  def change
    drop_table :ethnicities
  end
end
