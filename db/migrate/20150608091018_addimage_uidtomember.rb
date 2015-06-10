class AddimageUidtomember < ActiveRecord::Migration
  def change
  	add_column :members, :image_uid,  :string
  end
end
