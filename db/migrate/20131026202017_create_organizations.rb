class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :kind
      t.string :website
      t.string :content
      t.text :address
      t.has_attached_file :avatar
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
