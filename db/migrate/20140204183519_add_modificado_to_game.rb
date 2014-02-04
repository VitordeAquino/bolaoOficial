class AddModificadoToGame < ActiveRecord::Migration
  def change
    add_column :games, :modificado, :boolean, :default => false
  end
end
