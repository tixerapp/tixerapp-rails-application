class CreateTimelines < ActiveRecord::Migration
  def change
    create_table :timelines do |t|
      t.references :user, index: true
      t.string :route
      t.text :content
      t.boolean :hidden

      t.timestamps
    end
  end
end
