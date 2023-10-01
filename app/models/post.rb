class Post < ApplicationRecord
  has_many :comentarios, dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}
  validates :content, presence: true, length: {minimum: 10, maximum:50}
end
