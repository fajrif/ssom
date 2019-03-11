class AddOrientationToPictures < ActiveRecord::Migration
  def change
		add_column :pictures, :orientation, :string
  end
end
