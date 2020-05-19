require 'rails_helper'

RSpec.describe "galleries/show", type: :view do
  before(:each) do
    @gallery = assign(:gallery, Gallery.create!(
      :name => "Name",
      :image_type => "Image Type",
      :tag => "Tag",
      :usage => "Usage",
      :caption => "Caption",
      :sub_caption => "Sub Caption"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Image Type/)
    expect(rendered).to match(/Tag/)
    expect(rendered).to match(/Usage/)
    expect(rendered).to match(/Caption/)
    expect(rendered).to match(/Sub Caption/)
  end
end
