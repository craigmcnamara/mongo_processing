require 'spec_helper'

describe "connections/index.html.haml" do
  before(:each) do
    assign(:connections, [
      stub_model(Connection,
        :name => "Name",
        :url => "Url",
        :port => "Port"
      ),
      stub_model(Connection,
        :name => "Name",
        :url => "Url",
        :port => "Port"
      )
    ])
  end

  it "renders a list of connections" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Port".to_s, :count => 2
  end
end
