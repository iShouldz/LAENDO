class Comentario < ApplicationRecord
  validates :autor , presence: true, length: {minimum: 5}
  validates :content, presence: true, length: {minimum: 10}
  belongs_to :post
end
