class Comments < ApplicationRecord
  validates :text, presence: true
  belongs_to :blog
end
