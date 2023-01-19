class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :no-test-framework

      t.timestamps
    end
  end
end
