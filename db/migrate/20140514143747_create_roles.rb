class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :rName
      t.text :rDesc

      t.timestamps
    end
  end
end
