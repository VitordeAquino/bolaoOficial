class AddPlacarresultadoToUser < ActiveRecord::Migration
  def change
  	add_column :users, :placar, :integer
  	add_column :users, :resultado, :integer
  end
end
