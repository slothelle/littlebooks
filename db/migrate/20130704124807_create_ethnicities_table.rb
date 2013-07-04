class CreateEthnicitiesTable < ActiveRecord::Migration
  def change
    create_table :ethnicities do |t|
      t.string      :group
      t.timestamps
    end
  end
end
