class RemoveAltphnoToRegs < ActiveRecord::Migration
  def change
    remove_column :regs, :altphno, :string
  end
end
