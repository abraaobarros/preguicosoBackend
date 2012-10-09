require 'spec_helper'

describe "item_cardapios/index" do
  before(:each) do
    assign(:item_cardapios, [
      stub_model(ItemCardapio),
      stub_model(ItemCardapio)
    ])
  end

  it "renders a list of item_cardapios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
