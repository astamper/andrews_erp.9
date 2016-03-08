require 'rails_helper'

RSpec.describe "stocks/show", type: :view do
  before(:each) do
    @stock = assign(:stock, Stock.create!(
      :initial_quantity => 1.5,
      :current_quantity => 1.5,
      :unit => "Unit",
      :purchase_price => 1.5,
      :supplier => "Supplier",
      :batch_number => "Batch Number",
      :supplier => nil,
      :stock_type => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/Supplier/)
    expect(rendered).to match(/Batch Number/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
