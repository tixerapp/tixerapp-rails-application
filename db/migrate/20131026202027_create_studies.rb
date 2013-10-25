class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.references :user, index: true
      t.references :organization, index: true
      t.string :degree
      t.text :content
      t.date :started_at
      t.date :finished_at
      t.boolean :is_current

      t.timestamps
    end
  end
end
