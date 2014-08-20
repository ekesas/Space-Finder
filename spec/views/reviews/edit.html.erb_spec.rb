require 'rails_helper'

RSpec.describe "reviews/edit", :type => :view do
  before(:each) do
    @review = assign(:review, Review.create!(
      :author => "MyString",
      :content => "MyString",
      :rating => "MyString",
      :space_id => "MyString"
    ))
  end

  it "renders the edit review form" do
    render

    assert_select "form[action=?][method=?]", review_path(@review), "post" do

      assert_select "input#review_author[name=?]", "review[author]"

      assert_select "input#review_content[name=?]", "review[content]"

      assert_select "input#review_rating[name=?]", "review[rating]"

      assert_select "input#review_space_id[name=?]", "review[space_id]"
    end
  end
end
