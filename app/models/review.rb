class Review < ApplicationRecord
  belongs_to :oenologist
  belongs_to :wine
end
