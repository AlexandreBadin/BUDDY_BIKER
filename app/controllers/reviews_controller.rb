class ReviewsController < ApplicationController
  def create
    @biker = Biker.find(params[:biker_id])
    @review = Review.new(review_params)
    @review.biker = @biker
    if @review.save
      redirect_to biker_path(@biker)
    else
      render 'bikers/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
