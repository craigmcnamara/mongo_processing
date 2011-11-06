require 'spec_helper'

describe "connections/show.html.erb" do
  before(:each) do
    @connection = assign(:connection, stub_model(Connection,
      :name => "Name",
      :url => "Url",
      :port => "Port"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Port/)
  end
end
