require 'rails_helper'

RSpec.describe "reviews/edit", :type => :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :body => "MyString"
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input#review_body[name=?]", "review[body]"
    end
  end
end
