class Article < ApplicationRecord
  has_rich_text :text
  validates :title, presence: true
  validates :text, presence: true
end
