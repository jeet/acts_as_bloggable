require 'spec_helper'

describe "assets/show" do
  before(:each) do
    @asset = assign(:asset, stub_model(Asset,
      :name => "Name",
      :description => "MyText",
      :assetable_id => 1,
      :assetable_type => "Assetable Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Assetable Type/)
  end
end
