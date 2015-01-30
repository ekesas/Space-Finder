class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]


  def create
    @space =Space.find(params[:space_id])
    @comment = @space.comments.create(params[:comment])

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
  end
end 
end 
  

  