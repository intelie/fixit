class AddForcePresenceToSolution < ActiveRecord::Migration
  add_index :solutions, :name, presence: true
  add_index :solutions, :description, presence: true
end
