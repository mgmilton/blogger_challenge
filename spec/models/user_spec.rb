require "rails_helper"

describe User, type: :model do
  describe "validations" do
    it "presence of email" do
      user = User.new(password: "test")

      expect(user).to_not be_valid
    end

    it "uniqueness of email" do
      u1 = User.create(email: "ebwhite@grammer.com", password: "test")
      u2 = User.new(email: "ebwhite@grammer.com", password: "test")

      expect(u2).to_not be_valid
    end
  end
end
