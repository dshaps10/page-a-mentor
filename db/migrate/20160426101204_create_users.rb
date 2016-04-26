class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :last_name
      t.string :first_name
      t.string :phase
      t.string :email
      t.string :password_hash

      t.timestamps null: false
    end
  end
end
