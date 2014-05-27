class CreateRolesSections < ActiveRecord::Migration
  def change
    create_table :roles_sections do |t|
      t.integer :role_id
      t.integer :section_id
    end
  end
end
