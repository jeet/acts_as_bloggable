require 'spec_helper'

describe "posts/edit" do
  before(:each) do
    @post = assign(:post, stub_model(Post,
      :title => "MyString",
      :content => "MyText",
      :summary => "MyText",
      :permalink => "MyString",
      :rendering_engine => "MyString",
      :state => "MyString"
    ))
  end

  it "renders the edit post form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => posts_path(@post), :method => "post" do
      assert_select "input#post_title", :name => "post[title]"
      assert_select "textarea#post_content", :name => "post[content]"
      assert_select "textarea#post_summary", :name => "post[summary]"
      assert_select "input#post_permalink", :name => "post[permalink]"
      assert_select "input#post_rendering_engine", :name => "post[rendering_engine]"
      assert_select "input#post_state", :name => "post[state]"
    end
  end
end
