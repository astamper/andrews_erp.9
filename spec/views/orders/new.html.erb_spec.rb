require 'rails_helper'

RSpec.describe "orders/new", type: :view do
  before(:each) do
    assign(:order, Order.new(
      :status => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :fob_time => "MyString",
      :paid => false,
      :shipping_type => "MyString",
      :customer => nil
    ))
  end

  it "renders new order form" do
    render

    assert_select "form[action=?][method=?]", orders_path, "post" do

      assert_select "input#order_status[name=?]", "order[status]"

      assert_select "input#order_first_name[name=?]", "order[first_name]"

      assert_select "input#order_last_name[name=?]", "order[last_name]"

      assert_select "input#order_fob_time[name=?]", "order[fob_time]"

      assert_select "input#order_paid[name=?]", "order[paid]"

      assert_select "input#order_shipping_type[name=?]", "order[shipping_type]"

      assert_select "input#order_customer_id[name=?]", "order[customer_id]"
    end
  end
end
