class UsersController < ApplicationController
  before_filter :signed_in_user

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def index
    @users = User.all
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User destroyed."
    redirect_to users_url
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      flash[:success] = "Welcome to Cytosite!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
    
    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end

end
