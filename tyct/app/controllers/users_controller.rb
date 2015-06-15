class UsersController < ApplicationController
  # GET /users
  # GET /users.json

before_filter :set_headers

  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    render json: @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params(params[:user]))

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end


  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.attributes = user_params(params[:user])
      @user.save(validate:false);
   # if @user.update(user_params(params[:user]))
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    head :no_content
  end


  def login
   @user = User.find(params[:id])
   if  @user.try(:authenticate,(params[:password]))
     render json: @user
   else
     render json: @user.errors, status: :unprocessable_entity
   end
  end


  private
    
    def user_params(params)
      params.permit(:communityID, :firstName, :lastName, :password, :email, :suburb, :city, :streetAddress, :postalCode)
    end

  def update_params(params)
    params.require(:user).permit(:communityID, :communityID, :firstName, :lastName, :password, :email, :suburb, :city, :streetAddress, :postalCode)
  end
  def set_headers
 	headers['Access-Control-Allow-Origin'] = '*'
  end
end

