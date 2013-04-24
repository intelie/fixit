class Solution < ActiveRecord::Base
  attr_accessible :name, :description, :problem_id
  belongs_to :problem

  validates_presence_of :name, :description, :problem_id

  def to_s
    name
  end
end
