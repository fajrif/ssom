class AddColumnToProjects < ActiveRecord::Migration
  def change
		add_column :portfolios, :type, :string
		add_column :portfolios, :size, :string
		add_column :portfolios, :location, :string
		add_column :pictures, :order_no, :integer
  end
end
