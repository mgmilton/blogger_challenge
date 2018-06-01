
user_1 = User.create!(name: "Ernest Hemmingway", email: "user_one@email.com", password: "test_one")
blog_1 = user_1.blogs.create!(title: "Stories of Nick Adams", article: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
blog_1.commentaries.create!(text: "F Scott Fitzgerald doesn't enjoy your work")
