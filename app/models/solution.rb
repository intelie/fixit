class Solution < ActiveRecord::Base
  belongs_to :problem

  attr_accessible :name, :description

  validates :name, presence: true
  validates :description, presence: true
end
