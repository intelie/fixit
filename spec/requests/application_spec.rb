require 'spec_helper'

describe "Application" do
  describe "GET /" do
    it "renders the problems page" do
      get root_path
      response.status.should be(200)
      response.should render_template('problems/index')
    end
  end
end
