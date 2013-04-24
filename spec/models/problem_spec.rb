require 'spec_helper'

describe Problem do
  it "shouldn't accept problem without name" do
    Problem.create().should have(1).errors_on(:name)
  end

  it "should accept problem with name" do
    Problem.create(name: "Problem Name").should have(0).errors_on(:name)
  end

  it "shouldn't accept problem without description" do
    Problem.create().should have(1).errors_on(:description)
  end

  it "should accept problem with description" do
    Problem.create(description: "Problem Description").should have(0).errors_on(:description)
  end

  it "shouldn't accept problem without name and description" do
    Problem.create().should have(2).errors
  end

  it "should accept problem with name" do
    Problem.create(name: "Problem Name", description: "Problem description").should have(0).errors
  end
end
