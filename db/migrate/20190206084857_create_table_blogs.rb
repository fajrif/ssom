class CreateTableBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string   :title, null: false, default: ""
      t.string   :description, null: false, default: ""
      t.string   :image, null: false, default: ""
      t.integer  :category_id, null: false, default: ""
      t.timestamps null: false
    end

    add_index :blogs, :title, unique: true
  end
end
