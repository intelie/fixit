class AddDescriptionToSolution < ActiveRecord::Migration
  def change
    add_column :solutions, :description, :text
  end
end
