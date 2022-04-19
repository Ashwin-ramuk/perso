class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string "fullname"
      t.string :email
      t.date :birthday
      t.string :designation

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end
