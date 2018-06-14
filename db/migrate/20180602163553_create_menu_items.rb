class CreateMenuItems < ActiveRecord::Migration[5.2]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.string :belongs_to
      t.text :link
      t.integer :order

      t.timestamps
    end
  end
end
