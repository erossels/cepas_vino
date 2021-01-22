class Strain < ApplicationRecord
  has_many :assemblies, dependent: :destroy
  has_many :wines, through: :assemblies, dependent: :destroy
  validates :name, uniqueness: true
  validates :name, presence: true

  def to_s
    name
  end
end
