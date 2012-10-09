require 'spec_helper'

describe "estabelecimentos/index" do
  before(:each) do
    assign(:estabelecimentos, [
      stub_model(Estabelecimento,
        :key => "Key",
        :logo_url => "Logo Url"
      ),
      stub_model(Estabelecimento,
        :key => "Key",
        :logo_url => "Logo Url"
      )
    ])
  end

  it "renders a list of estabelecimentos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Key".to_s, :count => 2
    assert_select "tr>td", :text => "Logo Url".to_s, :count => 2
  end
end
