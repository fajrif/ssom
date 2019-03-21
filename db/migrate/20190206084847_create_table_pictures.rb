class CreateTablePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string   :image, null: false, default: ""
      t.integer  :portfolio_id, null: false, default: ""
      t.integer  :category_id, null: false, default: ""
      t.timestamps null: false
    end
  end
end
