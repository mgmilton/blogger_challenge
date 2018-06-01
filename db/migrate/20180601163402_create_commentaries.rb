class CreateCommentaries < ActiveRecord::Migration[5.1]
  def change
    create_table :commentaries do |t|
      t.string :text
      t.references :blog, foreign_key: true
    end
  end
end
