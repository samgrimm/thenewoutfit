require 'spec_helper'

describe "styles/index" do
  before(:each) do
    assign(:styles, [
      stub_model(Style,
        :bodytype => "Bodytype",
        :need => "Need",
        :texture => "Texture",
        :color => "Color",
        :statement => "Statement"
      ),
      stub_model(Style,
        :bodytype => "Bodytype",
        :need => "Need",
        :texture => "Texture",
        :color => "Color",
        :statement => "Statement"
      )
    ])
  end

  it "renders a list of styles" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Bodytype".to_s, :count => 2
    assert_select "tr>td", :text => "Need".to_s, :count => 2
    assert_select "tr>td", :text => "Texture".to_s, :count => 2
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Statement".to_s, :count => 2
  end
end
