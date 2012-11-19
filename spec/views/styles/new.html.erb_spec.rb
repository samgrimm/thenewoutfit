require 'spec_helper'

describe "styles/new" do
  before(:each) do
    assign(:style, stub_model(Style,
      :bodytype => "MyString",
      :need => "MyString",
      :texture => "MyString",
      :color => "MyString",
      :statement => "MyString"
    ).as_new_record)
  end

  it "renders new style form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => styles_path, :method => "post" do
      assert_select "input#style_bodytype", :name => "style[bodytype]"
      assert_select "input#style_need", :name => "style[need]"
      assert_select "input#style_texture", :name => "style[texture]"
      assert_select "input#style_color", :name => "style[color]"
      assert_select "input#style_statement", :name => "style[statement]"
    end
  end
end
