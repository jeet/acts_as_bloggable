require 'spec_helper'

describe "versions/show" do
  before(:each) do
    @version = assign(:version, stub_model(Version,
      :name => "Name",
      :description => "MyText",
      :versionable_id => 1,
      :versionable_type => "Versionable Type"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/Versionable Type/)
  end
end
