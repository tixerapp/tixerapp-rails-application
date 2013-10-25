class CreateColleagues < ActiveRecord::Migration
  def change
    create_table :colleagues do |t|
      t.references :follower, index: true
      t.references :following, index: true
      t.boolean :accepted
      t.boolean :follower_blocked
      t.boolean :following_blocked

      t.timestamps
    end
  end
end
