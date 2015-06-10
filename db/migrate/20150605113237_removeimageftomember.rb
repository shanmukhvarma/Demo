class Removeimageftomember < ActiveRecord::Migration
  def change
  	remove_column :members, :image
  end
end
