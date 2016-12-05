class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]
  before_action :logged_in_user, only: [:edit, :update]
  
  # GET /users
  # GET /users.json
  def index
    
    @users = User.all
  end 

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    
      if @user.save
        session[:user_id] = @user.id
        flash[:success] = "Welcome to the alpha blog #{@user.username}"
        redirect_to user_path(@user)
      else
        render 'new'
      end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      redirect_to root_path, :notice => "You've updated your information!"
    else
      render 'edit'
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      redirect_to users_url, :notice => "Thank you for sharing with us!"
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def logged_in_user
      unless logged_in?
        
        redirect_to login_url, :notice => "You must login to do this."
      end 
    end 

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:username, :email, :password, :country, :city, :points, :languages)
    end

    def require_admin
      if logged_in? && !current_user.admin?
        redirect_to root_path, :notice => "You aren't an admin, bub."
      end 
    end 
end
