class AdministratorsController < ApplicationController
  # GET /administrators
  # GET /administrators.json

before_filter :set_headers

  def index
    @administrators = Administrator.all

    render json: @administrators
  end

  # GET /administrators/1
  # GET /administrators/1.json
  def show
    @administrator = Administrator.find(params[:id])

    render json: @administrator
  end

  # POST /administrators
  # POST /administrators.json
  def create
    @administrator = Administrator.new(administrator_params(params[:administrator]))

    if @administrator.save
      render json: @administrator, status: :created, location: @administrator
    else
      render json: @administrator.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /administrators/1
  # PATCH/PUT /administrators/1.json
  def update
    @administrator = Administrator.find(params[:id])

    if @administrator.update(administrator_params(params[:administrator]))
      head :no_content
    else
      render json: @administrator.errors, status: :unprocessable_entity
    end
  end

  # DELETE /administrators/1
  # DELETE /administrators/1.json
  def destroy
    @administrator = Administrator.find(params[:id])
    @administrator.destroy

    head :no_content
  end

  private
    
    def administrator_params(params)
      params.permit(:userID)
    end

  def set_headers
	headers['Access-Control-Allow-Origin'] = '*'
  end


end
