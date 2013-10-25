class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.references :user, index: true
      t.references :activity, index: true
      t.string :rsvp

      t.timestamps
    end
  end
end
