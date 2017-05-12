class LoginController < ApplicationController

  USER, password = "user", "pass"
  #before_filter :authentication_check

    def authentication_check
	authenticate_or_request_with_http_basic do |username,pass|
	   
	     true
	   
	    
	   
	end
  end

  def index 
  end

end
