require 'rails_helper'

RSpec.describe "comments/show", :type => :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :body => "MyText",
      :space_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
  end
end
