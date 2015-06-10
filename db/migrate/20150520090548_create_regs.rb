class CreateRegs < ActiveRecord::Migration
  def change
   
    create_table :regs do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :phno
      t.string :addr

      t.timestamps null: false
    end


  end
end
