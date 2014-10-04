class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :description
      t.string :address
      t.string :phone
      t.string :email
      t.string :ein
      t.string :website

      t.timestamps
    end
  end
end
