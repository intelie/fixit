require 'spec_helper'

describe Problem do
  it "shouldn't accept problem without name" do
    Problem.create().should have(1).errors_on(:name)
  end
  it "should accept problem with name" do
    Problem.create(name: "Problem Name").should have(0).errors_on(:name)
  end
end
