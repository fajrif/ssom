class CreateTableCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string   :name, null: false, default: ""
      t.timestamps null: false
    end

    add_index :categories, :name, unique: true
  end
end
