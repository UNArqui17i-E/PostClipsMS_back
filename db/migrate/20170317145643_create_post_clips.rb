class CreatePostClips < ActiveRecord::Migration[5.0]
  def change
    create_table :post_clips do |t|
      t.string :name
      t.string :description
      t.text :contentLink
      t.string :attachment
      t.integer :board_id

      t.timestamps
    end
  end
end
