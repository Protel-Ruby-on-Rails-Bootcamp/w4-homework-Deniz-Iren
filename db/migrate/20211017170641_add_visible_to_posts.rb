class AddVisibleToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :visible, :boolean
  end
end
