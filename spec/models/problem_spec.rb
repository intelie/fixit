require 'spec_helper'

describe Problem do
  let(:problem_without_solution) { Problem.create(name: "Problem without solution", description: "return hi") }
  let(:problem_with_solution) { Problem.create(name: "Problem with solution", description: "return hi") }
  let(:solution) { Solution.create(name: "solution", description: "hi") }

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

  it "shouldn't have any solution" do
    problem_without_solution.solutions.should be_empty
  end

  it "should have one solution" do
    solution.problem = problem_with_solution
    solution.save!
    problem_with_solution.solutions.size.should be_equal(1)
  end
end
