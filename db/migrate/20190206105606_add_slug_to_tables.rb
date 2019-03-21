class AddSlugToTables < ActiveRecord::Migration
  def change
		add_column :portfolios, :slug, :string, unique: true
    add_index :portfolios, :slug, unique: true
  end
end
