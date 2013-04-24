class FixitController < ApplicationController
  def index
    @problems = Problem.all
  end
end
