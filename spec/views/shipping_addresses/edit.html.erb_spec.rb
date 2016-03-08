require 'rails_helper'

RSpec.describe "shipping_addresses/edit", type: :view do
  before(:each) do
    @shipping_address = assign(:shipping_address, ShippingAddress.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :country => "MyString",
      :zip => "MyString",
      :email => "MyString",
      :phone => "MyString",
      :customer => nil,
      :order => nil
    ))
  end

  it "renders the edit shipping_address form" do
    render

    assert_select "form[action=?][method=?]", shipping_address_path(@shipping_address), "post" do

      assert_select "input#shipping_address_first_name[name=?]", "shipping_address[first_name]"

      assert_select "input#shipping_address_last_name[name=?]", "shipping_address[last_name]"

      assert_select "input#shipping_address_address_1[name=?]", "shipping_address[address_1]"

      assert_select "input#shipping_address_address_2[name=?]", "shipping_address[address_2]"

      assert_select "input#shipping_address_city[name=?]", "shipping_address[city]"

      assert_select "input#shipping_address_state[name=?]", "shipping_address[state]"

      assert_select "input#shipping_address_country[name=?]", "shipping_address[country]"

      assert_select "input#shipping_address_zip[name=?]", "shipping_address[zip]"

      assert_select "input#shipping_address_email[name=?]", "shipping_address[email]"

      assert_select "input#shipping_address_phone[name=?]", "shipping_address[phone]"

      assert_select "input#shipping_address_customer_id[name=?]", "shipping_address[customer_id]"

      assert_select "input#shipping_address_order_id[name=?]", "shipping_address[order_id]"
    end
  end
end
