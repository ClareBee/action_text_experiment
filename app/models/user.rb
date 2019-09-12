class User < ApplicationRecord
  # for compatability w ActionText & signed global id for db lookup
  include ActionText::Attachable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # https://github.com/basecamp/name_of_person
  has_person_name

  def to_trix_content_attachment_partial_path
    to_partial_path
  end
end
