class CreateRolesUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :roles_users, id: false do |t|
      t.belongs_to :role, index: true
      t.belongs_to :user, index: true 
    end
  end
end
