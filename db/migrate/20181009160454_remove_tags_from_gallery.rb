class RemoveTagsFromGallery < ActiveRecord::Migration[5.2]
  def change
    remove_column :galleries, :tag, :string
  end
end
