require 'rails_helper'

RSpec.describe "galleries/edit", type: :view do
  before(:each) do
    @gallery = assign(:gallery, Gallery.create!(
      :name => "MyString",
      :image_type => "MyString",
      :tag => "MyString",
      :usage => "MyString",
      :caption => "MyString",
      :sub_caption => "MyString"
    ))
  end

  it "renders the edit gallery form" do
    render

    assert_select "form[action=?][method=?]", gallery_path(@gallery), "post" do

      assert_select "input[name=?]", "gallery[name]"

      assert_select "input[name=?]", "gallery[image_type]"

      assert_select "input[name=?]", "gallery[tag]"

      assert_select "input[name=?]", "gallery[usage]"

      assert_select "input[name=?]", "gallery[caption]"

      assert_select "input[name=?]", "gallery[sub_caption]"
    end
  end
end
