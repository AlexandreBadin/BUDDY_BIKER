class ReviewsController < ApplicationController
  def create
    @biker = Biker.find(params[:biker_id])
    @review = Review.new(review_params)
    @review.biker = @biker
    if @review.save
      redirect_to biker_path(@biker, anchor: "review-#{@review.id}")
    else
      render 'bikers/show'
    end
  end

   def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to biker_path(@review.biker, anchor: "review")
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
