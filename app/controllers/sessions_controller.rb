class SessionsController < ApplicationController
    before_action :require_login
    skip_before_action :require_login, only: [:create]
  

    def new
    end 
    def create 
        session[:name] = params[:name] unless params[:name] == "" || params[:name] == nil 
        if session[:name]
        else 
            redirect_to '/sessions'
        end         
    end 
    def destroy
        session[:name] = nil 
    end 

    private 

    def require_login
        redirect_to '/sessions' unless session.include? :name
    end
end
