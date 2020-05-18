class ReviewsController < ApplicationController
    def create
        product = Product.find(params[:product_id])
        product.reviews.create(review_params.merge(user_id: current_user.id))
        @reviews = product.reviews
    end

    private

    def review_params
        params.require(:review).permit(:comment, :rating)
    end
end