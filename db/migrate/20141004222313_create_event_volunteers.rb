class CreateEventVolunteers < ActiveRecord::Migration
  def change
    create_table :event_volunteers do |t|
      t.integer :event_id, :null => false
      t.integer :user_id, :null => false
      t.boolean :showed_up

      t.timestamps
    end
  end
end
