class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json

before_filter :set_headers

  def index
    @comments = Comment.all

    render json: @comments
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    render json: @comment
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(comment_params(params[:comment]))

    if @comment.save
      render json: @comment, status: :created, location: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    if @comment.update(comment_params(params[:comment]))
      head :no_content
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    head :no_content
  end

  private
    
    def comment_params(params)
      params.permit(:userID, :communityID, :comment)
    end

  def set_headers
	headers['Access-Control-Allow-Origin'] = '*'
  end


end
