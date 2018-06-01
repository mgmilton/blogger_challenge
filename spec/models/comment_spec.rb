require "rails_helper"

describe Comments, type: :model do
  describe "validations" do
    it "presence of text required" do
      user_1 = User.create(name: "user_one", email: "user_one@email.com", password: "test_one")
      blog_1 = user_1.blogs.create(title: "first_blog", article: "hello world")

      comment_1 = blog_1.comments.create(text: "This is a test comment")

      expect(comment_1).to be_valid
      expect(comment_2).to_not be_valid

    end
  end

  describe "relationships" do
    it {should belong_to(:blog)}
  end
end
