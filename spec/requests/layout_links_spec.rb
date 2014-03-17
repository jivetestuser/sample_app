require 'spec_helper'

describe "LayoutLinks" do
it "should have a Home page at '/'" do
  get '/'
  response.body.should include "title | Home</title>"
end

it "should have a Contact page at '/contact'" do
  get '/contact'
  response.body.should include "title | Contact</title>"
end

it "should have a About page at '/about'" do
  get '/about'
  response.body.should include "title | About</title>"
end

it "should have a Help page at '/'" do
  get '/help'
  response.body.should include "title | Help</title>"
end

end
