require 'spec_helper'

describe Solution do
  it "shouldn't accept solution without name" do
    Solution.create().should have(1).errors_on(:name)
  end

  it "should accept solution with name" do
    Solution.create(name: "Solution Name").should have(0).errors_on(:name)
  end

  it "shouldn't accept solution without description" do
    Solution.create().should have(1).errors_on(:description)
  end

  it "should accept solution with description" do
    Solution.create(description: "Solution Description").should have(0).errors_on(:description)
  end

  it "shouldn't accept solution without name and description" do
    Solution.create().should have(2).errors
  end

  it "should accept solution with name" do
    Solution.create(name: "Solution Name", description: "Solution description").should have(0).errors
  end
end
