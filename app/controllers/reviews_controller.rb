class ReviewsController < ApplicationController
  def create
      @product = Product.find params[:product_id]
    @review = Review.new(review_params)
    @review.product = @product
    @review.user = current_user
    if @review.save
      redirect_to "/products/#{@product.id}"
    else
      render plain: "Review not saved"
      end
  end

  private
    def review_params
      params.require(:review).permit(:description, :rating)
    end
end