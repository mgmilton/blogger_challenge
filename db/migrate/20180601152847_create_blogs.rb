class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :article
      t.references :user, foreign_key: true
    end
  end
end
