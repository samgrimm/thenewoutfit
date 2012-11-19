require 'spec_helper'

describe "styles/show" do
  before(:each) do
    @style = assign(:style, stub_model(Style,
      :bodytype => "Bodytype",
      :need => "Need",
      :texture => "Texture",
      :color => "Color",
      :statement => "Statement"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Bodytype/)
    rendered.should match(/Need/)
    rendered.should match(/Texture/)
    rendered.should match(/Color/)
    rendered.should match(/Statement/)
  end
end
