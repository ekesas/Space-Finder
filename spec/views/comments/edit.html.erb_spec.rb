require 'rails_helper'

RSpec.describe "comments/edit", :type => :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :body => "MyText",
      :space_id => 1
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "textarea#comment_body[name=?]", "comment[body]"

      assert_select "input#comment_space_id[name=?]", "comment[space_id]"
    end
  end
end
