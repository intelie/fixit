require 'spec_helper'

describe Solution do
  it "shouldn't accept solution without name" do
    Solution.create().should have(1).errors_on(:name)
  end
  it "shouldn't accept solution without name" do
    Solution.create(name: "Solution Name").should_not have(1).errors_on(:name)
  end
  it "shouldn't accept solution without description" do
    Solution.create().should have(1).errors_on(:description)
  end
  it "shouldn't accept solution without description" do
    Solution.create(description: "Solution Description").should_not have(1).errors_on(:description)
  end
  it "shouldn't accept a solution that don't solve a problem" do
    Solution.create().should have(1).errors_on(:problem_id)
  end
  it "shouldn't accept a solution that don't solve a problem" do
    Solution.create(problem_id: 1).should_not have(1).errors_on(:problem_id)
  end
end
