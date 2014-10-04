class AddingNotNullConstraints < ActiveRecord::Migration
  def up
    change_column :organizations, :description, :text
    change_column :organizations, :name, :string, :null => false
    change_column :organizations, :email, :string, :null => false
    change_column :organizations, :ein, :string, :null => false
    change_column :users, :fname, :string, :null => false
    change_column :users, :lname, :string, :null => false
    change_column :users, :email, :string, :null => false
    change_column :events, :name, :string, :null => false
    change_column :events, :start_time, :datetime, :null => false
    change_column :events, :end_time, :datetime, :null => false
    change_column :events, :organization_id, :integer, :null => false
  end

  def down
    change_column :organizations, :description, :string
    change_column :organizations, :name, :string
    change_column :organizations, :email, :string
    change_column :organizations, :ein, :string
    change_column :users, :fname, :string
    change_column :users, :lname, :string
    change_column :users, :email, :string
    change_column :events, :name, :string
    change_column :events, :start_time, :datetime
    change_column :events, :end_time, :datetime
    change_column :events, :organization_id, :integer
  end
end
