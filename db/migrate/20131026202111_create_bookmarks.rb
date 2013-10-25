class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.references :user, index: true
      t.references :document, index: true
      t.text :note

      t.timestamps
    end
  end
end
