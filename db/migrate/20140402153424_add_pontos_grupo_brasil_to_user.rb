class AddPontosGrupoBrasilToUser < ActiveRecord::Migration
  def change
  	add_column :users, :pontosGrupoBrasil, :integer
  end
end
