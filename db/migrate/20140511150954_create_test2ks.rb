class CreateTest2ks < ActiveRecord::Migration
  def change
    create_table :test2ks do |t|
      t.string :name
      t.integer :age
      t.string :tmp

      t.timestamps
    end
  end
end
