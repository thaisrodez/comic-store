class ReviewsController < ApplicationController
  def create
    @comic = Comic.find(params[:comic_id])
    @review = Review.new(review_params)
    @review.comic = @comic

    respond_to do |format|
      if @review.save
        format.html { redirect_to comic_path(@comic) }
        format.json # Follow the classic Rails flow and look for a create.json view
      else
        format.html { render 'comics/show' }
        format.json # Follow the classic Rails flow and look for a create.json view
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
