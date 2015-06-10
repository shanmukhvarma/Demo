class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :password_hash
      t.string :gender
      t.string :email
      t.string :city
      t.string :image
      t.string :hobbies

      t.timestamps null: false
    end
  end
end
