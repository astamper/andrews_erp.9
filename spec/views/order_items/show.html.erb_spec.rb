require 'rails_helper'

RSpec.describe "order_items/show", type: :view do
  before(:each) do
    @order_item = assign(:order_item, OrderItem.create!(
      :quantity => 1,
      :status => "Status",
      :stock_type => "Stock Type",
      :unit => "Unit",
      :packaging => "Packaging",
      :order => nil,
      :stock_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/Stock Type/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/Packaging/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
