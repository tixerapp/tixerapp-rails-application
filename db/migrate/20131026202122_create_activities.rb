class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :user, index: true
      t.string :name
      t.string :website
      t.string :content
      t.has_attached_file :avatar
      t.text :address
      t.datetime :started_at
      t.datetime :finished_at
      t.string :privacy

      t.timestamps
    end
  end
end
