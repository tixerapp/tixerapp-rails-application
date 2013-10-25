class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.references :sender, index: true
      t.references :recipient, index: true
      t.text :content
      t.boolean :read

      t.timestamps
    end
  end
end
