class AddOrderToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :order, :integer
  end
end
