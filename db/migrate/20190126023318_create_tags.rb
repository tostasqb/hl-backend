class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tag_groups do |t|
      t.string :name
    end

    create_table :tags do |t|
      t.string :name
      t.references :tag_group
    end
  end
end
