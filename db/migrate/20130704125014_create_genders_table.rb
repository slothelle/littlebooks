class CreateGendersTable < ActiveRecord::Migration
  def change
    create_table :genders do |t|
      t.string :sex
      t.timestamps
    end
  end
end
