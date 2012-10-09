require 'spec_helper'

describe "pedidos/show" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :id_estabelecimento => "Id Estabelecimento",
      :status => "Status",
      :lista_itens => "Lista Itens"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Id Estabelecimento/)
    rendered.should match(/Status/)
    rendered.should match(/Lista Itens/)
  end
end
