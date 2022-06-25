class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :people
      t.string :question
      t.string :genre
      t.string :about

      t.timestamps
    end
  end
end
