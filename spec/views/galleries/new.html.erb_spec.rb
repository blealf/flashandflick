require 'rails_helper'

RSpec.describe "galleries/new", type: :view do
  before(:each) do
    assign(:gallery, Gallery.new(
      :name => "MyString",
      :image_type => "MyString",
      :tag => "MyString",
      :usage => "MyString",
      :caption => "MyString",
      :sub_caption => "MyString"
    ))
  end

  it "renders new gallery form" do
    render

    assert_select "form[action=?][method=?]", galleries_path, "post" do

      assert_select "input[name=?]", "gallery[name]"

      assert_select "input[name=?]", "gallery[image_type]"

      assert_select "input[name=?]", "gallery[tag]"

      assert_select "input[name=?]", "gallery[usage]"

      assert_select "input[name=?]", "gallery[caption]"

      assert_select "input[name=?]", "gallery[sub_caption]"
    end
  end
end
