class CreateThings < ActiveRecord::Migration[5.2]
  def change
    create_table :things do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.integer :price
      t.string :street
      t.string :zip_code
      t.string :city
      t.string :country
      t.string :category
      t.integer :days_nb_min
      t.integer :days_nb_max
      t.datetime :starting_available_date
      t.datetime :ending_available_date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
