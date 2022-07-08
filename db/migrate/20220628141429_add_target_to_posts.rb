class AddTargetToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :target, :string
  end
end
