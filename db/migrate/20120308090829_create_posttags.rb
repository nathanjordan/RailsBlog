class CreatePosttags < ActiveRecord::Migration
  def change
    create_table :posttags do |t|
      t.integer :tagid
      t.integer :postid

      t.timestamps
    end
  end
end
