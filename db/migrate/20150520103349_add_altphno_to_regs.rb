class AddAltphnoToRegs < ActiveRecord::Migration
  def change
    add_column :regs, :altphno, :string
  end
end
