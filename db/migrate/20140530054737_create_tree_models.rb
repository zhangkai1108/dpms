class CreateTreeModels < ActiveRecord::Migration
  def change
    create_table :tree_models do |t|
      t.string :text
      t.boolean :checked
    end
  end
end
