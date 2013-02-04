require 'spec_helper'

describe "posts/index" do
  before(:each) do
    assign(:posts, [
      stub_model(Post,
        :title => "Title",
        :content => "MyText",
        :summary => "MyText",
        :permalink => "Permalink",
        :rendering_engine => "Rendering Engine",
        :state => "State"
      ),
      stub_model(Post,
        :title => "Title",
        :content => "MyText",
        :summary => "MyText",
        :permalink => "Permalink",
        :rendering_engine => "Rendering Engine",
        :state => "State"
      )
    ])
  end

  it "renders a list of posts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Permalink".to_s, :count => 2
    assert_select "tr>td", :text => "Rendering Engine".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
  end
end
