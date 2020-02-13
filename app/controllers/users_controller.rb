class UsersController < ApplicationController

  require 'byebug'
    

    def login
        @user = User.find_by(email: user_params[:email])

          render json: @user
     
      end
    
      def create
        @user = User.create(user_params)

          render json: @user

      end

    private
    
    def user_params
      params.require(:user).permit(:name, :email, :id)
    end
end
