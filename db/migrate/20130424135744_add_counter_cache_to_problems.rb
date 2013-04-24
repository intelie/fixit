class AddCounterCacheToProblems < ActiveRecord::Migration
  def change
    add_column :problems, :solutions_count, :integer
  end
end
