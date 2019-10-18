class UsersController < ApplicationController

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        user = User.find_or_create_by(user_params)
        redirect_to user_path(user)
    end

    def show
        @user = User.find(params[:id])
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        flash[:notice] = "User deleted."
        redirect_to new_user_path
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end

end
