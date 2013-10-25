class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.references :user, index: true
      t.references :topic, index: true
      t.references :level, index: true
      t.string :name
      t.string :kind
      t.text :content

      t.timestamps
    end
  end
end
