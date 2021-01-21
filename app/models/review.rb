class Review < ApplicationRecord
  belongs_to :oenologist
  belongs_to :wine

  validates :score, presence: true
  validates_numericality_of :score, greater_than_or_equal_to: 0, less_than_or_equal_to: 100, message: 'must be between 0 & 100'

  def show_eon
    Oenologist.find(oenologist_id).name
  end

  def show_wine
    Wine.find(wine_id).name
  end
end
