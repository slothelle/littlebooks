class CreateEthnicitiesTable < ActiveRecord::Migration
  def change
    create_table :ethnicities do |t|
      t.text       :group
      t.timestamps
    end
  end
end
