class CreateMytalesTable < ActiveRecord::Migration
  def change
    create_table :mytales do |t|
      t.references :user
      t.references :mytale
      t.string :summary
      t.text   :content
      t.boolean :private, :default => true
      t.timestamps
    end
  end
end
