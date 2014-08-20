require 'rails_helper'

RSpec.describe "reviews/index", :type => :view do
  before(:each) do
    assign(:reviews, [
      Review.create!(
        :author => "Author",
        :content => "Content",
        :rating => "Rating",
        :space_id => "Space"
      ),
      Review.create!(
        :author => "Author",
        :content => "Content",
        :rating => "Rating",
        :space_id => "Space"
      )
    ])
  end

  it "renders a list of reviews" do
    render
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Content".to_s, :count => 2
    assert_select "tr>td", :text => "Rating".to_s, :count => 2
    assert_select "tr>td", :text => "Space".to_s, :count => 2
  end
end
