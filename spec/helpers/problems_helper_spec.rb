require 'spec_helper'

describe ProblemsHelper do
  describe "#display_number_of_solutions" do
    let(:p1) { Problem.create(name: "p1", description: "d1") }

    it "problem p1 without solutions" do
      expect(display_number_of_solutions(p1)).to eql("No solutions yet.")
    end

    it "problem p1 with one solution" do
      Solution.create(name: "s1", description: "d1", problem_id: p1.id)
      expect(display_number_of_solutions(p1)).to eql("One solution.")
    end

    it "problem p1 more with two solutions" do
      Solution.create(name: "s1", description: "d1", problem_id: p1.id)
      Solution.create(name: "s2", description: "d2", problem_id: p1.id)
      expect(display_number_of_solutions(p1)).to eql("2 solutions.")
    end
  end
end

