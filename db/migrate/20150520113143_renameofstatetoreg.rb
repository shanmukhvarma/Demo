class Renameofstatetoreg < ActiveRecord::Migration
  def change
  	rename_column :regs, :state, :states                         

  end
end
