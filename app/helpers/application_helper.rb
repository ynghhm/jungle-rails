module ApplicationHelper

  def averager(product)
    average_rating = 0
    reviews = Review.where(product_id: product.id)
    if reviews.length > 0
      average_rating = reviews.average(:rating).round(1)
    end
    average_rating
  end

end
