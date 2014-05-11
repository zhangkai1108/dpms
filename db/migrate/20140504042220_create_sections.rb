class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.string :url
      t.integer :sort
      t.integer :uid
      t.timestamps
    end
  end
end
