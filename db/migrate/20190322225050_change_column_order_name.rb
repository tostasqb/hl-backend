class ChangeColumnOrderName < ActiveRecord::Migration[5.2]
  def change
    rename_column :tag_groups, :order, :ordar
  end
end
