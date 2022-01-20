class Quote < ApplicationRecord
  validates :content, presence: true
  validates :author, presence: true
  scope :search_author, -> (author_parameter) { where(author: author_parameter) }
end