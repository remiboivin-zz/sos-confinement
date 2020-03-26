class AddSpecialtyToDoctors < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :specialty, :string, null: false, default: ""
  end
end
