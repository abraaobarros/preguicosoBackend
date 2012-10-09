require 'spec_helper'

describe "item_cardapios/show" do
  before(:each) do
    @item_cardapio = assign(:item_cardapio, stub_model(ItemCardapio))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
