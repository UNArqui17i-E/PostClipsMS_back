class CreatePostClips < ActiveRecord::Migration[5.0]
  def change
    create_table :post_clips do |t|
      t.string :name
      t.string :description
      t.text :content

      t.timestamps
    end
  end
end
