require 'rails_helper'

RSpec.describe "posts/new", type: :view do
  before(:each) do
    assign(:post, Post.new(
      :content => "MyText",
      :user => "MyString",
      :title => "MyString"
    ))
  end

  it "renders new post form" do
    render

    assert_select "form[action=?][method=?]", posts_path, "post" do

      assert_select "textarea[name=?]", "post[content]"

      assert_select "input[name=?]", "post[user]"

      assert_select "input[name=?]", "post[title]"
    end
  end
end
