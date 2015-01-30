require 'rails_helper'

RSpec.describe "comments/new", :type => :view do
  before(:each) do
    assign(:comment, Comment.new(
      :body => "MyText",
      :space_id => 1
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "textarea#comment_body[name=?]", "comment[body]"

      assert_select "input#comment_space_id[name=?]", "comment[space_id]"
    end
  end
end
