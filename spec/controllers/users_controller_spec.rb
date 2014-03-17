require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end

    it "shoud have the right title" do
      get 'new'
      #response.body.should include "Sign up</title>"
      response.should have_selector('title', :content => "Sign up")
    end
  end

end
