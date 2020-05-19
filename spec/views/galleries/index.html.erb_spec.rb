require 'rails_helper'

RSpec.describe "galleries/index", type: :view do
  before(:each) do
    assign(:galleries, [
      Gallery.create!(
        :name => "Name",
        :image_type => "Image Type",
        :tag => "Tag",
        :usage => "Usage",
        :caption => "Caption",
        :sub_caption => "Sub Caption"
      ),
      Gallery.create!(
        :name => "Name",
        :image_type => "Image Type",
        :tag => "Tag",
        :usage => "Usage",
        :caption => "Caption",
        :sub_caption => "Sub Caption"
      )
    ])
  end

  it "renders a list of galleries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Image Type".to_s, :count => 2
    assert_select "tr>td", :text => "Tag".to_s, :count => 2
    assert_select "tr>td", :text => "Usage".to_s, :count => 2
    assert_select "tr>td", :text => "Caption".to_s, :count => 2
    assert_select "tr>td", :text => "Sub Caption".to_s, :count => 2
  end
end
