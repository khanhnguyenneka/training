class CreateCategoriesAndPosts < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :state

      t.timestamps
    end

    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :state
      t.references :category

      t.timestamps
    end
  end
end
