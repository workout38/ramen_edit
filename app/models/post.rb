class Post < ApplicationRecord
  validates :content, {presence: true, length: {maximum: 300}}
end
