require 'spec_helper'

describe "item_cardapios/new" do
  before(:each) do
    assign(:item_cardapio, stub_model(ItemCardapio).as_new_record)
  end

  it "renders new item_cardapio form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => item_cardapios_path, :method => "post" do
    end
  end
end
