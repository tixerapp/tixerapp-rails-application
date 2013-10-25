class CreateRevisions < ActiveRecord::Migration
  def change
    create_table :revisions do |t|
      t.references :user, index: true
      t.references :document, index: true
      t.has_attached_file :content
      t.string :mimetype

      t.timestamps
    end
  end
end
