class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :type
      t.string :rss_url

      t.timestamps
    end
  end
end
