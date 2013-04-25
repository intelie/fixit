class Problem < ActiveRecord::Base
  attr_accessible :name, :description
  has_many :solutions

  validates_presence_of :name, :description

  def to_s
    name
  end
end
