class ProjectWebsitesController < ApplicationController
  # GET /project_websites
  # GET /project_websites.json

before_filter :set_headers

  def index
    @project_websites = ProjectWebsite.all

    render json: @project_websites
  end

  # GET /project_websites/1
  # GET /project_websites/1.json
  def show
    @project_website = ProjectWebsite.find(params[:id])

    render json: @project_website
  end

  # POST /project_websites
  # POST /project_websites.json
  def create

    @project_website = ProjectWebsite.new(project_website_params(params[:project_website]))

    if @project_website.save
      render json: @project_website, status: :created, location: @project_website
    else
      render json: @project_website.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /project_websites/1
  # PATCH/PUT /project_websites/1.json
  def update
    @project_website = ProjectWebsite.find(params[:id])

    if @project_website.update(project_website_params(params[:project_website]))
      head :no_content
    else
      render json: @project_website.errors, status: :unprocessable_entity
    end
  end

  # DELETE /project_websites/1
  # DELETE /project_websites/1.json
  def destroy
    @project_website = ProjectWebsite.find(params[:id])
    @project_website.destroy

    head :no_content
  end

  private
    
    def project_website_params(params)
      params.permit(:projectID, :siteAddress)
    end

  def set_headers
	headers['Access-Control-Allow-Origin'] = '*'
  end


end
