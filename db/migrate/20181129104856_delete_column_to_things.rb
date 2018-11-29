class DeleteColumnToThings < ActiveRecord::Migration[5.2]
  def change
  	remove_column :things, :street
  	remove_column :things, :zip_code
  	remove_column :things, :city
  	remove_column :things, :country
  	add_column :things, :address, :string
  end
end
