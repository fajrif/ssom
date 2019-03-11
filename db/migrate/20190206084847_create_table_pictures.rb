class CreateTablePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string   :title, null: false, default: ""
      t.string   :description, null: false, default: ""
      t.string   :image, null: false, default: ""
      t.integer  :portfolio_id, null: false, default: ""
      t.timestamps null: false
    end

    add_index :pictures, :title
  end
end
