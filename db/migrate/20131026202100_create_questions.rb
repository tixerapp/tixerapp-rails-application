class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.references :user, index: true
      t.references :topic, index: true
      t.string :name
      t.text :content
      t.string :status

      t.timestamps
    end
  end
end
