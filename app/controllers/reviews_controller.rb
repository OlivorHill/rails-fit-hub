class ReviewsController < ApplicationController
  def new
    @user = current_user.id
    @workout = Workout.find(params[:workout_id])
    @review = Review.new
  end

  def create
    @user = current_user
    @workout = Workout.find(params[:workout_id])
    @review = Review.new(review_params)
    @review.workout = @workout
    @review.user = @user

    if @review.save
      redirect_to workout_path(@workout), notice: "Successfully created a review!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
