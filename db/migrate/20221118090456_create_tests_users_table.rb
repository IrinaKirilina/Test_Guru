class CreateTestsUsersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :tests_users do |t|
      t.references :test, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.index [:user_id, :test_id]

      t.timestamps
    end
  end
end
