class Article < ApplicationRecord
  has_rich_text :text
  validates :title, presence: true
  validates :text, presence: true

  def user_mentions
    @users ||= text.text.attachments.select{ |a| a.attachable.class == User }.map(&:attachable).uniq
  end
end
