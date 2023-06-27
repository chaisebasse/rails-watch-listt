class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.text :comment
      t.references :movie, null: false, foreign_key: { to_table: :movies, on_delete: :restrict }
      t.references :list, null: false, foreign_key: { to_table: :lists, on_delete: :restrict }

      t.timestamps
    end
  end
end
