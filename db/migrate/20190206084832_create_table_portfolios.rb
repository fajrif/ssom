class CreateTablePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string   :title, null: false, default: ""
      t.string   :history, null: false, default: ""
      t.string   :description, null: false, default: ""
      t.timestamps null: false
    end

    add_index :portfolios, :title, unique: true
  end
end
