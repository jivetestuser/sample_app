require 'spec_helper'

describe PagesController do
  render_views

  before(:each) do
    @base_title = "Ruby on Rails Tutorial Sample App"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
    get 'home'
    response.body.should include "#{@base_title} | Home</title>"
    #response.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | Home")
    end

    it "should have a non-blank body" do
      get 'home'
      response.body.should_not =~ /<body>\s*<\/body>/
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the right title" do
    get 'contact'
    response.body.should include "#{@base_title} | Contact</title>"
    #response.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
    get 'about'
    response.body.should include "#{@base_title} | About</title>"
    #response.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end

    describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end

    it "should have the right title" do
    get 'help'
    response.body.should include "#{@base_title} | Help</title>"
    #response.should have_selector("title", :content => "Ruby on Rails Tutorial Sample App | Home")
    end
  end


end
