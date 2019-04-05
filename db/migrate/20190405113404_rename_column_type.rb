class RenameColumnType < ActiveRecord::Migration
  def change
		rename_column :portfolios, :type, :type_project
  end
end
