class CreateTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :texts do |t|
      t.string :title
      t.string :body
      t.boolean :published

      t.timestamps
    end
  end
end
