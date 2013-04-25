require 'spec_helper'

describe ProblemsController do

  # This should return the minimal set of attributes required to create a valid
  # Problem. As you add validations to Problem, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {name: "Problem 1", description: "It's a really big problem"}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProblemsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all problems as @problems" do
      problem = Problem.create! valid_attributes
      get :index, {}, valid_session
      assigns(:problems).should eq([problem])
    end
  end

  describe "GET show" do
    it "assigns the requested problem as @problem" do
      problem = Problem.create! valid_attributes
      get :show, {:id => problem.to_param}, valid_session
      assigns(:problem).should eq(problem)
    end
  end

  describe "GET new" do
    it "assigns a new problem as @problem" do
      get :new, {}, valid_session
      assigns(:problem).should be_a_new(Problem)
    end
  end

  describe "GET edit" do
    it "assigns the requested problem as @problem" do
      problem = Problem.create! valid_attributes
      get :edit, {:id => problem.to_param}, valid_session
      assigns(:problem).should eq(problem)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Problem" do
        expect {
          post :create, {:problem => valid_attributes}, valid_session
        }.to change(Problem, :count).by(1)
      end

      it "assigns a newly created problem as @problem" do
        post :create, {:problem => valid_attributes}, valid_session
        assigns(:problem).should be_a(Problem)
        assigns(:problem).should be_persisted
      end

      it "redirects to the created problem" do
        post :create, {:problem => valid_attributes}, valid_session
        response.should redirect_to(Problem.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved problem as @problem" do
        # Trigger the behavior that occurs when invalid params are submitted
        Problem.any_instance.stub(:save).and_return(false)
        post :create, {:problem => { "name" => "invalid value" }}, valid_session
        assigns(:problem).should be_a_new(Problem)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Problem.any_instance.stub(:save).and_return(false)
        post :create, {:problem => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested problem" do
        problem = Problem.create! valid_attributes
        # Assuming there are no other problems in the database, this
        # specifies that the Problem created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Problem.any_instance.should_receive(:update_attributes).with({ "name" => "MyString" })
        put :update, {:id => problem.to_param, :problem => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested problem as @problem" do
        problem = Problem.create! valid_attributes
        put :update, {:id => problem.to_param, :problem => valid_attributes}, valid_session
        assigns(:problem).should eq(problem)
      end

      it "redirects to the problem" do
        problem = Problem.create! valid_attributes
        put :update, {:id => problem.to_param, :problem => valid_attributes}, valid_session
        response.should redirect_to(problem)
      end
    end

    describe "with invalid params" do
      it "assigns the problem as @problem" do
        problem = Problem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Problem.any_instance.stub(:save).and_return(false)
        put :update, {:id => problem.to_param, :problem => { "name" => "invalid value" }}, valid_session
        assigns(:problem).should eq(problem)
      end

      it "re-renders the 'edit' template" do
        problem = Problem.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Problem.any_instance.stub(:save).and_return(false)
        put :update, {:id => problem.to_param, :problem => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested problem" do
      problem = Problem.create! valid_attributes
      expect {
        delete :destroy, {:id => problem.to_param}, valid_session
      }.to change(Problem, :count).by(-1)
    end

    it "redirects to the problems list" do
      problem = Problem.create! valid_attributes
      delete :destroy, {:id => problem.to_param}, valid_session
      response.should redirect_to(problems_url)
    end
  end

end
