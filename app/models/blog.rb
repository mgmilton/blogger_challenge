class Blog < ApplicationRecord
  validates :title, presence: true
  validates :article, presence: true
  belongs_to :user
end
