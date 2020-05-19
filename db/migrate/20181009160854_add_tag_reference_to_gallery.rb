class AddTagReferenceToGallery < ActiveRecord::Migration[5.2]
  def change
    add_reference :galleries, :tag, foreign_key: true
  end
end
