class CreateTableBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string   :title, null: false, default: ""
      t.string   :caption, null: false, default: ""
      t.string   :image, null: false, default: ""
      t.timestamps null: false
    end
  end
end
