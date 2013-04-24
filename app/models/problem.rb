class Problem < ActiveRecord::Base
  has_many :solutions, :dependent => :destroy

  attr_accessible :name, :description

  validates :name, presence: true
  validates :description, presence: true
end
