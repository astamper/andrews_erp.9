require 'rails_helper'

RSpec.describe "order_items/index", type: :view do
  before(:each) do
    assign(:order_items, [
      OrderItem.create!(
        :quantity => 1,
        :status => "Status",
        :stock_type => "Stock Type",
        :unit => "Unit",
        :packaging => "Packaging",
        :order => nil,
        :stock_type => nil
      ),
      OrderItem.create!(
        :quantity => 1,
        :status => "Status",
        :stock_type => "Stock Type",
        :unit => "Unit",
        :packaging => "Packaging",
        :order => nil,
        :stock_type => nil
      )
    ])
  end

  it "renders a list of order_items" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Stock Type".to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "Packaging".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
