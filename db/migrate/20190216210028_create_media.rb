class CreateMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :media do |t|
      t.string :path
      t.string :filename
      t.string :folder

      t.timestamps
    end
  end
end
