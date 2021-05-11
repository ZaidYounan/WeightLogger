class AddForeignKeyToEntries < ActiveRecord::Migration[6.1]
  def change
    add_reference(:entries, :user)
    add_foreign_key :entries, :users
  end
end
