class ListMigration < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string :name
      t.string :item
      t.string :description
    end

    create_table :items do |t|
      t.string   :name
      t.integer  :list_id
      t.datetime :due_at, null: true
    end
  end
end
