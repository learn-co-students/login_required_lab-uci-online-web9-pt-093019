class SecretsController < ApplicationController
    
    def show
        if session[:name]
            render :show
        else 
            redirect_to '/sessions'
        end 
    end 
    
end
