class AddCategoryToPortfolios < ActiveRecord::Migration
  def change
		add_column :portfolios, :category_id, :integer
		remove_column :blogs, :category_id
  end
end
