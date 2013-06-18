require 'spec_helper'
describe "routing to profiles" do
  it "routes /profile/:username to profile#show for username" do
    get "/feed/yahoo.rss"
    response.should eq '200'
  end

  #it "does not expose a list of profiles" do
    #expect(:get => "/profiles").not_to be_routable
  #end
end
