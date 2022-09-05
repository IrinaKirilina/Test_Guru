class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.integer :id
      t.string :title
      t.integer :level
      t.integer :category_id

      t.timestamps
    end
  end
end
