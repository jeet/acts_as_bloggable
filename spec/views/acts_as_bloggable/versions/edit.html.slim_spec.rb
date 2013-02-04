require 'spec_helper'

describe "versions/edit" do
  before(:each) do
    @version = assign(:version, stub_model(Version,
      :name => "MyString",
      :description => "MyText",
      :versionable_id => 1,
      :versionable_type => "MyString"
    ))
  end

  it "renders the edit version form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => versions_path(@version), :method => "post" do
      assert_select "input#version_name", :name => "version[name]"
      assert_select "textarea#version_description", :name => "version[description]"
      assert_select "input#version_versionable_id", :name => "version[versionable_id]"
      assert_select "input#version_versionable_type", :name => "version[versionable_type]"
    end
  end
end
