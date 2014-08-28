require 'rails_helper'

RSpec.describe "reviews/show", :type => :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :body => "Body"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Body/)
  end
end
