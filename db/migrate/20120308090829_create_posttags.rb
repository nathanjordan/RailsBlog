class CreatePosttags < ActiveRecord::Migration
  def change
    create_table :posttags do |t|
      t.integer :tag_id
      t.integer :post_id

      t.timestamps
    end
  end
end
