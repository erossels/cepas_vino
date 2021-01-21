class Oenologist < ApplicationRecord
  has_many :reviews, dependent: :destroy

end
