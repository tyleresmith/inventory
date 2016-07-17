class CategoriesController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  def show

  end

  def new
    @category = Category.new
  end


  def create
    @category = Category.new(post_params)
    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render action: 'show', status: :created, location: @category }
      else
        format.html { render action: 'new' }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit

  end

  def update
    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @category }
      else
        format.html { render action: 'new' }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to user_path(current_user) }
      format.json { head :no_content }
    end
  end

  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :name_id)
  end
end
