class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :name
      t.string :social
      t.text :description

      t.timestamps
    end
  end
end
