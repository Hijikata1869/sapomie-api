class CreateUsers < ActiveRecord::Migration[7.2]
  def change
    create_table :users do |t|
      t.string :nickname, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.string :self_introduction

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
