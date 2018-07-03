class AddTitleToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :title, :string
  end
end
