class AddTimeToGame < ActiveRecord::Migration
  def change
    add_column :games, :time1, :string
    add_column :games, :time2, :string
  end
end
