class Solution < ActiveRecord::Base
  belongs_to :problem, :counter_cache => true

  attr_accessible :name, :description, :problem_id

  validates :name, presence: true
  validates :description, presence: true
  validate :problem_exist

  def problem_exist
    if problem_id.present?
      begin
        problem = Problem.find(problem_id)
      rescue
        errors.add(:problem_id, "not exist") unless problem
      end
    else
      errors.add(:problem_id, "not exist")
    end
  end
end
