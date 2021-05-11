class AddForeignKeyToEntries < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :users
  end
end
