class RenameColumnName < ActiveRecord::Migration
  def change
    rename_column :channels, :type, :movieType
  end
end
