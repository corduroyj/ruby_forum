class Post < ApplicationRecord
  belongs_to :sub
  has_many :comments

  # validates :user, presence: true
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

end
