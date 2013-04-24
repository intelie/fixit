module ProblemsHelper
  def display_number_of_solutions(problem)
    n = problem.solutions.size
    if n == 0
      "No solutions yet."
    elsif n == 1
      "One solution."
    else
      "#{n} solutions."
    end
  end
end
