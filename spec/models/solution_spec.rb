require 'spec_helper'

describe Solution do
  it "shouldn't accept problem without name" do
    Solution.create().should have(1).errors_on(:name)
  end
  it "shouldn't accept problem without name" do
    Solution.create(name: "Problem Name").should_not have(1).errors_on(:name)
  end
end
