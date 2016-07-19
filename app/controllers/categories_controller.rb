class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]
  def show
    @comment = Comment.new
  end

  def new
    @category = Category.new
  end


  def create
    @category = Category.new(name: category_name, user_id: current_user.id)

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
      if @category.update(name: category_name)
        format.html { redirect_to @category, notice: 'Post was successfully edited.' }
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

  def category_name
    !category_params['name'].empty? ? category_params['name'] : category_params['id']
  end 

  def category_params
    params.require(:category).permit(:name, :id)
  end
end
