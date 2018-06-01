class CreateBlogComment < ActiveRecord::Migration[5.1]
  def change
    create_table :blog_comments do |t|
      t.references :blog, foreign_key: true
      t.references :comment, foreign_key: true
    end
  end
end
