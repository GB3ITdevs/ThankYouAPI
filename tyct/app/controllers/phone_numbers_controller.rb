class PhoneNumbersController < ApplicationController
  # GET /phone_numbers
  # GET /phone_numbers.json

before_filter :set_headers

  def index
    @phone_numbers = PhoneNumber.all

    render json: @phone_numbers
  end

  # GET /phone_numbers/1
  # GET /phone_numbers/1.json
  def show
    @phone_number = PhoneNumber.find(params[:id])

    render json: @phone_number
  end

  # POST /phone_numbers
  # POST /phone_numbers.json
  def create
    @phone_number = PhoneNumber.new(phone_number_params(params[:phone_number]))

    if @phone_number.save
      render json: @phone_number, status: :created, location: @phone_number
    else
      render json: @phone_number.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /phone_numbers/1
  # PATCH/PUT /phone_numbers/1.json
  def update
    @phone_number = PhoneNumber.find(params[:id])

    if @phone_number.update(phone_number_params(params[:phone_number]))
      head :no_content
    else
      render json: @phone_number.errors, status: :unprocessable_entity
    end
  end

  # DELETE /phone_numbers/1
  # DELETE /phone_numbers/1.json
  def destroy
    @phone_number = PhoneNumber.find(params[:id])
    @phone_number.destroy

    head :no_content
  end

  private
    
    def phone_number_params(params)
      params.permit(:userID, :phoneNumber)
    end

  def set_headers
  	headers['Access-Control-Allow-Origin'] = '*'
  end


end
