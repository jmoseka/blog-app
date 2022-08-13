class CreatePost < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.integer :authorId
      t.string :title
      t.text :text
      t.integer :commentCounter
      t.integer :likesCounter

      t.timestamps
    end
  end
end
