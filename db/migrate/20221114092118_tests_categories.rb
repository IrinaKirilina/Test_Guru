class TestsCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :tests_categories do |t|
      t.references :test, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
 
      t.timestamps
    end
  end
end
