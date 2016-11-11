class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :author
      t.text :body
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
