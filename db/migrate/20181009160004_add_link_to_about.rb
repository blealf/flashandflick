class AddLinkToAbout < ActiveRecord::Migration[5.2]
  def change
    add_column :abouts, :link, :string
  end
end
