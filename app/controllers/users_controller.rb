class UsersController < ApplicationController
	def index
		@users = User.all
	end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params_user)
  	if @user.save
      log_in @user
      flash[:success] = "Bienvenu sur eventbritelike!"
  		redirect_to @user
  	else
  		render "new"
  	end
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

    private
  def params_user
    params.permit(:name, :email, :password)
  end

end
