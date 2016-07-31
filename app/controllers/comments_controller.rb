class CommentsController < ApplicationController
  def create
    @comment = Comment.new(category_params)
    @comment.user = current_user
    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment.category, notice: 'Comment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @comment.category }
      else
        format.html { render action: 'new' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end 
  end

  def show
    @comment = Comment.find(params[:id])
    render json: @comment
  end


  private
  
  def category_params
    params.require(:comment).permit(:content, :category_id)
  end
end
