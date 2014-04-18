class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :condition
      t.string :price

      t.timestamps
    end
  end
end
