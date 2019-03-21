class CreateTableContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string   :name, null: false, default: ""
      t.string   :email, null: false, default: ""
      t.text     :message, null: false
      t.timestamps null: false
    end

    add_index :contacts, :name
    add_index :contacts, :email
  end
end
