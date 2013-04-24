class AddForcePresenceToProblem < ActiveRecord::Migration
  add_index :problems, :name, presence: true
  add_index :problems, :description, presence: true
end
