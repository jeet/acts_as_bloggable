require 'spec_helper'

describe "assets/edit" do
  before(:each) do
    @asset = assign(:asset, stub_model(Asset,
      :name => "MyString",
      :description => "MyText",
      :assetable_id => 1,
      :assetable_type => "MyString"
    ))
  end

  it "renders the edit asset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => assets_path(@asset), :method => "post" do
      assert_select "input#asset_name", :name => "asset[name]"
      assert_select "textarea#asset_description", :name => "asset[description]"
      assert_select "input#asset_assetable_id", :name => "asset[assetable_id]"
      assert_select "input#asset_assetable_type", :name => "asset[assetable_type]"
    end
  end
end
