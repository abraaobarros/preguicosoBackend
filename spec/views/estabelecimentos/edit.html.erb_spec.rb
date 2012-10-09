require 'spec_helper'

describe "estabelecimentos/edit" do
  before(:each) do
    @estabelecimento = assign(:estabelecimento, stub_model(Estabelecimento,
      :key => "MyString",
      :logo_url => "MyString"
    ))
  end

  it "renders the edit estabelecimento form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => estabelecimentos_path(@estabelecimento), :method => "post" do
      assert_select "input#estabelecimento_key", :name => "estabelecimento[key]"
      assert_select "input#estabelecimento_logo_url", :name => "estabelecimento[logo_url]"
    end
  end
end
