class RemoveAccountManagerFromOrganization < ActiveRecord::Migration
  def up
    remove_column :organizations, :account_manager
  end

  def down
    add_column :organizations, :account_manager, :string
  end
end
