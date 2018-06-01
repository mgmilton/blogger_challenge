class Blog < ApplicationRecord
  has_many :commentaries
  validates :title, presence: true
  validates :article, presence: true
  belongs_to :user
end
