require 'spec_helper'

describe "pedidos/edit" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :id_estabelecimento => "MyString",
      :status => "MyString",
      :lista_itens => "MyString"
    ))
  end

  it "renders the edit pedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pedidos_path(@pedido), :method => "post" do
      assert_select "input#pedido_id_estabelecimento", :name => "pedido[id_estabelecimento]"
      assert_select "input#pedido_status", :name => "pedido[status]"
      assert_select "input#pedido_lista_itens", :name => "pedido[lista_itens]"
    end
  end
end
