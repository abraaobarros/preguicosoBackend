require 'spec_helper'

describe "pedidos/index" do
  before(:each) do
    assign(:pedidos, [
      stub_model(Pedido,
        :id_estabelecimento => "Id Estabelecimento",
        :status => "Status",
        :lista_itens => "Lista Itens"
      ),
      stub_model(Pedido,
        :id_estabelecimento => "Id Estabelecimento",
        :status => "Status",
        :lista_itens => "Lista Itens"
      )
    ])
  end

  it "renders a list of pedidos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Id Estabelecimento".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Lista Itens".to_s, :count => 2
  end
end
