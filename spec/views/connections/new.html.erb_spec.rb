require 'spec_helper'

describe "connections/new.html.erb" do
  before(:each) do
    assign(:connection, stub_model(Connection,
      :name => "MyString",
      :url => "MyString",
      :port => "MyString"
    ).as_new_record)
  end

  it "renders new connection form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => connections_path, :method => "post" do
      assert_select "input#connection_name", :name => "connection[name]"
      assert_select "input#connection_url", :name => "connection[url]"
      assert_select "input#connection_port", :name => "connection[port]"
    end
  end
end
