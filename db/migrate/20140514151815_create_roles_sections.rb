class CreateRolesSections < ActiveRecord::Migration
  def change
    create_table :roles_sections do |t|
      t.integer :roid_id
      t.integer :section_id
    end
  end
end
