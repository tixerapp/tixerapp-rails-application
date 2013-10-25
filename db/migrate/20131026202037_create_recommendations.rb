class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.references :user, index: true
      t.references :recommender, index: true
      t.text :content
      t.boolean :accepted

      t.timestamps
    end
  end
end
