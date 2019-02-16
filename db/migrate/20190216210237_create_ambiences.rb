class CreateAmbiences < ActiveRecord::Migration[5.2]
  def change
    create_table :ambiences do |t|
      t.references :media

      t.timestamps
    end
  end
end
