class AddOrderToProjects < ActiveRecord::Migration
  def change
		add_column :portfolios, :order_no, :integer
  end
end
