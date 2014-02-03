class AddPontosToUser < ActiveRecord::Migration
  def change
    add_column :users, :pontos, :integer
  end
end
