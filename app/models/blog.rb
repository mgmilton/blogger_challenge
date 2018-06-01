class Blog < ApplicationRecord
  has_many :comments
  validates :title, presence: true
  validates :article, presence: true
  belongs_to :user
end
