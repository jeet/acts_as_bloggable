require 'spec_helper'

describe "assets/index" do
  before(:each) do
    assign(:assets, [
      stub_model(Asset,
        :name => "Name",
        :description => "MyText",
        :assetable_id => 1,
        :assetable_type => "Assetable Type"
      ),
      stub_model(Asset,
        :name => "Name",
        :description => "MyText",
        :assetable_id => 1,
        :assetable_type => "Assetable Type"
      )
    ])
  end

  it "renders a list of assets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Assetable Type".to_s, :count => 2
  end
end
