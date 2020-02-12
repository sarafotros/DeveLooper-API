class UsersController < ApplicationController
    # before_action :set_user, only: [:show]

    def show
        @user = User.find(params[:id])
        
        # # If the user exists AND the email entered is correct.
        # if !(user && user.authenticate(params[:email]))
        #   session[:user_id] = nil
        #   # flash[:notice] = "Sorry we can't find those details..."
        # else
        #   # flash[:notice] = "You have logged in successfully!"
        #   session[:user_id] = user.id
          render json: @user
        # end
      end
    
      def create
        @user = User.create(user_params)
        if @user.valid?
          session[:user_id] = @user.id
          render json: @user, status: :created, location: @user
        else
        # flash[:errors] = @user.errors.full_messages
        render json: @user.errors, status: :unprocessable_entity          
        end
      end

    private
    
    # def set_user
    #   @user = User.find(params[:id])
    # end

    def user_params
      params.require(:user).permit(:name, :email)
    end
end
