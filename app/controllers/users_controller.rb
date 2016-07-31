class UsersController < ApplicationController
  def show
    # binding.pry
    @user = User.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @user}
    end
  end
  def index
    @user = User.all
    render json: @user
  end
end
