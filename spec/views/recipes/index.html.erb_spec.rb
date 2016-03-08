require 'rails_helper'

RSpec.describe "recipes/index", type: :view do
  before(:each) do
    assign(:recipes, [
      Recipe.create!(
        :quantity => "9.99"
      ),
      Recipe.create!(
        :quantity => "9.99"
      )
    ])
  end

  it "renders a list of recipes" do
    render
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
