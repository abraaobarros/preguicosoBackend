require 'spec_helper'

describe "item_cardapios/edit" do
  before(:each) do
    @item_cardapio = assign(:item_cardapio, stub_model(ItemCardapio))
  end

  it "renders the edit item_cardapio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => item_cardapios_path(@item_cardapio), :method => "post" do
    end
  end
end
