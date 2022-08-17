class AddPostRefToLike < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :likes, null: false, foreign_key: true
  end
end
