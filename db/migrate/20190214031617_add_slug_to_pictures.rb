class AddSlugToPictures < ActiveRecord::Migration
  def change
		add_column :pictures, :slug, :string, unique: true
    add_index :pictures, :slug, unique: true
  end
end
