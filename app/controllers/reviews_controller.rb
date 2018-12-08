class ReviewsController < ApplicationController

    def create
        @product = Product.find(params[:product_id])
        @review = @product.reviews.new(review_params)
        @review.user = current_user
        @review.product = @product
        if @review.save
            redirect_to product_path(@product)
        else
            render 'new'
        end
    end

    def show
        @review = Product.find params[:id]
    end
    
    private
    def review_params
        params.require(:review).permit(:rating, :description)
    end

end