class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.references :user, index: true
      t.references :organization, index: true
      t.string :position
      t.text :content
      t.date :started_at
      t.date :finished_at
      t.boolean :is_current

      t.timestamps
    end
  end
end
