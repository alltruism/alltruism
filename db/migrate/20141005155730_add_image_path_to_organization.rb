class AddImagePathToOrganization < ActiveRecord::Migration
  def change
    add_column :organizations, :image_path, :string
  end
end
