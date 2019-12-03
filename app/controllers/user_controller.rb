class UserController < ApplicationController
    def login
        session[:login] = 1
        session[:cart] = nil
        flash[:notice] = "Admin Login sucessfull!!"
        redirect_to :controller => :products
    end 
    
    def logout
        session[:login] = nil
        session[:cart] = nil
        flash[:notice] = "You have been successfully logged out!!"
        redirect_to :controller => :products
    end
    
    private

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:fName)
    end

end
