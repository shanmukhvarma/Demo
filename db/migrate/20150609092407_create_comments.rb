class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.text :message

      t.timestamps null: false
    end
  end
end
