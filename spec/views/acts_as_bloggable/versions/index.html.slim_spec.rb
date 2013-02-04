require 'spec_helper'

describe "versions/index" do
  before(:each) do
    assign(:versions, [
      stub_model(Version,
        :name => "Name",
        :description => "MyText",
        :versionable_id => 1,
        :versionable_type => "Versionable Type"
      ),
      stub_model(Version,
        :name => "Name",
        :description => "MyText",
        :versionable_id => 1,
        :versionable_type => "Versionable Type"
      )
    ])
  end

  it "renders a list of versions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Versionable Type".to_s, :count => 2
  end
end
