class Oenologist < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :wines, through: :reviews
  default_scope { order(age: :desc) }
  
end
