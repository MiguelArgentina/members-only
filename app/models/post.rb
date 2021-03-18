class Post < ApplicationRecord
  belongs_to :member
  validates :body,  presence: true
  validates :title, presence: true
end
