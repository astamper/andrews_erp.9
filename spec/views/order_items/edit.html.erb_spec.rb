require 'rails_helper'

RSpec.describe "order_items/edit", type: :view do
  before(:each) do
    @order_item = assign(:order_item, OrderItem.create!(
      :quantity => 1,
      :status => "MyString",
      :stock_type => "MyString",
      :unit => "MyString",
      :packaging => "MyString",
      :order => nil,
      :stock_type => nil
    ))
  end

  it "renders the edit order_item form" do
    render

    assert_select "form[action=?][method=?]", order_item_path(@order_item), "post" do

      assert_select "input#order_item_quantity[name=?]", "order_item[quantity]"

      assert_select "input#order_item_status[name=?]", "order_item[status]"

      assert_select "input#order_item_stock_type[name=?]", "order_item[stock_type]"

      assert_select "input#order_item_unit[name=?]", "order_item[unit]"

      assert_select "input#order_item_packaging[name=?]", "order_item[packaging]"

      assert_select "input#order_item_order_id[name=?]", "order_item[order_id]"

      assert_select "input#order_item_stock_type_id[name=?]", "order_item[stock_type_id]"
    end
  end
end
