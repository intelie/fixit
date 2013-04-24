class Solution < ActiveRecord::Base
  belongs_to :problem

  attr_accessible :name, :description, :problem_id

  validates :name, presence: true
  validates :description, presence: true
  validates :problem_id, presence: true
end
