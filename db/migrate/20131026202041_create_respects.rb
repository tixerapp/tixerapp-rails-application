class CreateRespects < ActiveRecord::Migration
  def change
    create_table :respects do |t|
      t.references :user, index: true
      t.references :colleague, index: true
      t.boolean :blocked

      t.timestamps
    end
  end
end
