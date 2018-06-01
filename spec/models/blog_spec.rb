require "rails_helper"

describe Blog, type: :model do
  describe "validations" do
    it "presence of title and article" do
      user_1 = User.create(name: "user_one", email: "user_one@email.com", password: "test_one")
      blog_1 = user_1.blogs.create(title: "first_blog", article: "hello world")

      blog_2 = user_1.blogs.create(title: "second_blog")

      expect(blog_1).to be_valid
      expect(blog_2).to_not be_valid

    end
  end

  describe "relationships" do
    it {should belong_to(:user)}
  end
end
