class CommunitiesController < ApplicationController
  # GET /communities
  # GET /communities.json

before_filter :set_headers

  def index
    @communities = Community.all

    render json: @communities
  end

  # GET /communities/1
  # GET /communities/1.json
  def show
    @community = Community.find(params[:id])

    render json: @community
  end

  # POST /communities
  # POST /communities.json
  def create
    @community = Community.new(community_params(params[:community]))

    if @community.save
      render json: @community, status: :created, location: @community
    else
      render json: @community.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /communities/1
  # PATCH/PUT /communities/1.json
  def update
    @community = Community.find(params[:id])

    if @community.update(community_params(params[:community]))
      head :no_content
    else
      render json: @community.errors, status: :unprocessable_entity
    end
  end

  # DELETE /communities/1
  # DELETE /communities/1.json
  def destroy
    @community = Community.find(params[:id])
    @community.destroy

    head :no_content
  end

  private
    
    def community_params(params)
      params.permit(:communityID, :postalCode, :communityName)
    end

  def set_headers
	headers['Access-Control-Allow-Origin'] = '*'
  end


end
