class SecretsController < ApplicationController
    before_action :require_login

    def show
        @secret = "California newts are very poisonous, don't lick them!"
    end
 


end
