module WinesHelper

  def list_of_reviews(oenologist_id, wine_id)
    Review.where(oenologist_id: oenologist_id, wine_id: wine_id)
  end

end
