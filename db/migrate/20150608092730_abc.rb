class Abc < ActiveRecord::Migration
  def change
  	 rename_column :members, :image, :image_name
  end
end
