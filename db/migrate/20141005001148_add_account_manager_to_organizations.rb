class AddAccountManagerToOrganizations < ActiveRecord::Migration
  def change
    add_column :organizations, :account_manager, :string
  end
end
