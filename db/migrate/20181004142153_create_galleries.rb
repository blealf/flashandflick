class CreateGalleries < ActiveRecord::Migration[5.2]
  def change
    create_table :galleries do |t|
      t.string :name
      t.string :image_type
      t.string :tag
      t.string :usage
      t.string :caption
      t.string :sub_caption

      t.timestamps
    end
  end
end
