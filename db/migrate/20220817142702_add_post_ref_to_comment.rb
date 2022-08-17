class AddPostRefToComment < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :comments, null: false, foreign_key: true
  end
end
