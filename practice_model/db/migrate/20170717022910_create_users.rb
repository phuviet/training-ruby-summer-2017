class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.text :password_digest
      t.string :name
      t.integer :gender
      t.datetime :birthday
      t.integer :role, default: 0
      t.string :avatar
      t.string :provider
      t.string :uid
        t.text :confirm_token
        t.datetime :confirm_send_at
        t.datetime :confirm_at

      t.timestamps
    end
  end
end
