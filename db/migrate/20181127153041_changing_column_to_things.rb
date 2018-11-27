class ChangingColumnToThings < ActiveRecord::Migration[5.2]
  def change
    change_column :things, :starting_available_date, :date
    change_column :things, :ending_available_date, :date
  end
end
