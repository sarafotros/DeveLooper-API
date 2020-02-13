class UsersController < ApplicationController

  require 'byebug'
    

    def login
        @user = User.find_by(email: user_params[:email])

          render json: @user
     
      end
    
      def create
        @user = User.create(user_params)
        # if @user.valid?
        #   session[:user_id] = @user.id
          render json: @user, status: :created, location: @user
        # else
        # render json: @user.errors, status: :unprocessable_entity          
        # end
      end

    private
    
    def user_params
      params.require(:user).permit(:name, :email, :id)
    end
end
