class AddDescriptionToSolution < ActiveRecord::Migration
  def change
    add_column :solutions, :description, :string
  end
end
