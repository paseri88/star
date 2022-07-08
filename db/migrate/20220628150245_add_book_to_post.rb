class AddBookToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :book, :string
  end
end
