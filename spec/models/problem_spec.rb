require 'spec_helper'

describe Problem do
  it "shouldn't accept problem without name" do
    Problem.create().should_not have(1).errors_on(:name)
  end
  it "shouldn't accept problem without name" do
    Problem.create(name: "Problem Name").should_not have(1).errors_on(:name)
  end
end
