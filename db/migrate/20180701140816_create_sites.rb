class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :name
      t.string :email
      t.string :description
      t.string :author_name

      t.timestamps
    end
  end
end
