require 'spec_helper'

describe "connections/edit.html.haml" do
  before(:each) do
    @connection = assign(:connection, stub_model(Connection,
      :name => "MyString",
      :url => "MyString",
      :port => "MyString"
    ))
  end

  it "renders the edit connection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => connections_path(@connection), :method => "post" do
      assert_select "input#connection_name", :name => "connection[name]"
      assert_select "input#connection_url", :name => "connection[url]"
      assert_select "input#connection_port", :name => "connection[port]"
    end
  end
end
