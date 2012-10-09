require 'spec_helper'

describe "pedidos/new" do
  before(:each) do
    assign(:pedido, stub_model(Pedido,
      :id_estabelecimento => "MyString",
      :status => "MyString",
      :lista_itens => "MyString"
    ).as_new_record)
  end

  it "renders new pedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pedidos_path, :method => "post" do
      assert_select "input#pedido_id_estabelecimento", :name => "pedido[id_estabelecimento]"
      assert_select "input#pedido_status", :name => "pedido[status]"
      assert_select "input#pedido_lista_itens", :name => "pedido[lista_itens]"
    end
  end
end
