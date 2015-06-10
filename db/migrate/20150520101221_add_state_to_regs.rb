class AddStateToRegs < ActiveRecord::Migration
  def change
    add_column :regs, :state, :string
  end
end
