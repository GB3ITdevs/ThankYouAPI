class RatingsController < ApplicationController
  # GET /ratings
  # GET /ratings.json

before_filter :set_headers

  def index
    @ratings = Rating.all

    render json: @ratings
  end

  # GET /ratings/1
  # GET /ratings/1.json
  def show
    @rating = Rating.find(params[:id])

    render json: @rating
  end

  # POST /ratings
  # POST /ratings.json
  def create
    @rating = Rating.new(rating_params(params[:rating]))

    if @rating.save
      render json: @rating, status: :created, location: @rating
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ratings/1
  # PATCH/PUT /ratings/1.json
  def update
    @rating = Rating.find(params[:id])

    if @rating.update(rating_params(params[:rating]))
      head :no_content
    else
      render json: @rating.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ratings/1
  # DELETE /ratings/1.json
  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy

    head :no_content
  end

  private
    
    def rating_params(params)
      params.permit(:projectID, :userID, :rating)
    end

  def set_headers
	headers['Access-Control-Allow-Origin'] = '*'
  end


end
