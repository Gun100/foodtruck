class ReviewsController < ApplicationController
    def create
        #@review = Review.new(params.require(:review).permit(:content))
        @review = Review.new(params.require(:review).permit(:truck_id, :user_id, :content))
        @review.save
        redirect_to truck_path(@review.truck_id)
        
    end
    
    def update
        @review = Review.update(params.require(:review).permit(:truck_id, :user_id, :content))
    end
    
    def destroy
        @review = Review.find params[:id]
        @review.destroy
        redirect_to truck_path(@review.truck_id)
    end
    def show
        @reviews = Review.all      
    end     
end
