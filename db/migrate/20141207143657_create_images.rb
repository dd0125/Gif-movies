class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :url
      t.string :reference_url
      t.integer :view_count, :default => 0
      t.integer :favorite_count, :default => 0
      t.timestamps
    end
  end
end
