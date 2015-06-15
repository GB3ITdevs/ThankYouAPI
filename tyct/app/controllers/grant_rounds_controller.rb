class GrantRoundsController < ApplicationController

  # GET /grant_rounds
  # GET /grant_rounds.json



  def index
    @grant_rounds = GrantRound.all

    render json: @grant_rounds
  end

  # GET /grant_rounds/1
  # GET /grant_rounds/1.json
  def show
    @grant_round = GrantRound.find(params[:id])

    render json: @grant_round
  end

  # POST /grant_rounds
  # POST /grant_rounds.json
  def create
    @grant_round = GrantRound.new(grant_round_params(params[:grant_round]))

    if @grant_round.save
      render json: @grant_round, status: :created, location: @grant_round
    else
      render json: @grant_round.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /grant_rounds/1
  # PATCH/PUT /grant_rounds/1.json
  def update
    @grant_round = GrantRound.find(params[:id])

    if @grant_round.update(grant_round_params (params[:grant_round]))
      head :no_content
    else
      render json: @grant_round.errors, status: :unprocessable_entity
    end
  end

  # DELETE /grant_rounds/1
  # DELETE /grant_rounds/1.json
  def destroy
    @grant_round = GrantRound.find(params[:id])
    @grant_round.destroy

    head :no_content
  end

  private
    
    def grant_round_params(params)
      params.permit(:communityID, :startDate, :endDate)
    end

  def set_headers
	headers['Access-Control-Allow-Origin'] = '*'
  end

end
