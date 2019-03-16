class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_groups do |t|
      t.string :name
      t.integer :order

      t.timestamps
    end

    create_table :tags do |t|
      t.string :name
      t.references :tag_group

      t.timestamps
    end

    create_table :product_tags do |t|
      t.references :tag
      t.references :product

      t.timestamps
    end
  end
end
