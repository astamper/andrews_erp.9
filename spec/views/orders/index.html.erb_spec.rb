require 'rails_helper'

RSpec.describe "orders/index", type: :view do
  before(:each) do
    assign(:orders, [
      Order.create!(
        :status => "Status",
        :first_name => "First Name",
        :last_name => "Last Name",
        :fob_time => "Fob Time",
        :paid => false,
        :shipping_type => "Shipping Type",
        :customer => nil
      ),
      Order.create!(
        :status => "Status",
        :first_name => "First Name",
        :last_name => "Last Name",
        :fob_time => "Fob Time",
        :paid => false,
        :shipping_type => "Shipping Type",
        :customer => nil
      )
    ])
  end

  it "renders a list of orders" do
    render
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Fob Time".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Shipping Type".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
