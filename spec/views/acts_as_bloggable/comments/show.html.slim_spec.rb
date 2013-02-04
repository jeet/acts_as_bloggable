require 'spec_helper'

describe "comments/show" do
  before(:each) do
    @comment = assign(:comment, stub_model(Comment,
      :title => "Title",
      :comment => "MyText",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
  end
end
