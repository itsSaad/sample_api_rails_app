class AddIndexForNameToOwners < ActiveRecord::Migration
  def change
    add_index :owners, [:first_name, :last_name], :unique => true
  end
end
