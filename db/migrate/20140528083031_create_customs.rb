class CreateCustoms < ActiveRecord::Migration
  def change
    create_table :customs do |t|
      t.string :name
      t.string :linkMan
      t.string :mainMan
      t.string :level
      t.string :linkTel
      t.string :mainTel
      t.text :customDesc
      t.text :customLove
      t.string :operName
      t.integer :addr

      t.timestamps
    end
  end
end
