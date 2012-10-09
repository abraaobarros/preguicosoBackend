require 'spec_helper'

describe "estabelecimentos/show" do
  before(:each) do
    @estabelecimento = assign(:estabelecimento, stub_model(Estabelecimento,
      :key => "Key",
      :logo_url => "Logo Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Key/)
    rendered.should match(/Logo Url/)
  end
end
