class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.references :user, index: true
      t.references :organization, index: true
      t.text :title
      t.text :content
      t.date :published_at

      t.timestamps
    end
  end
end
