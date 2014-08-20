require 'rails_helper'

RSpec.describe "reviews/show", :type => :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :author => "Author",
      :content => "Content",
      :rating => "Rating",
      :space_id => "Space"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Content/)
    expect(rendered).to match(/Rating/)
    expect(rendered).to match(/Space/)
  end
end
