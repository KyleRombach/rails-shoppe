require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "Name",
        :price => 1.5,
        :image => "Image"
      ),
      Product.create!(
        :name => "Name",
        :price => 1.5,
        :image => "Image"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
