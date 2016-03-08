require 'rails_helper'

RSpec.describe "stocks/index", type: :view do
  before(:each) do
    assign(:stocks, [
      Stock.create!(
        :initial_quantity => 1.5,
        :current_quantity => 1.5,
        :unit => "Unit",
        :purchase_price => 1.5,
        :supplier => "Supplier",
        :batch_number => "Batch Number",
        :supplier => nil,
        :stock_type => nil
      ),
      Stock.create!(
        :initial_quantity => 1.5,
        :current_quantity => 1.5,
        :unit => "Unit",
        :purchase_price => 1.5,
        :supplier => "Supplier",
        :batch_number => "Batch Number",
        :supplier => nil,
        :stock_type => nil
      )
    ])
  end

  it "renders a list of stocks" do
    render
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Supplier".to_s, :count => 2
    assert_select "tr>td", :text => "Batch Number".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
